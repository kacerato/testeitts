.class public Lorg/eclipse/jdt/internal/compiler/batch/Main;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/problem/ProblemSeverities;
.implements Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;,
        Lorg/eclipse/jdt/internal/compiler/batch/Main$ResourceBundleFactory;
    }
.end annotation


# static fields
.field private static final ANNOTATION_SOURCE_CLASSPATH:Ljava/lang/String; = "CLASSPATH"

.field public static final DEFAULT_SIZE_CLASSPATH:I = 0x4

.field public static final NONE:Ljava/lang/String; = "none"

.field public static final TIMING_DETAILED:I = 0x2

.field public static final TIMING_DISABLED:I = 0x0

.field public static final TIMING_ENABLED:I = 0x1

.field public static final bundleName:Ljava/lang/String; = "org.eclipse.jdt.internal.compiler.batch.messages"


# instance fields
.field private addonExports:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private addonReads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected annotationPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected annotationsFromClasspath:Z

.field public batchCompiler:Lorg/eclipse/jdt/internal/compiler/Compiler;

.field public bundle:Ljava/util/ResourceBundle;

.field protected checkedClasspaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

.field public classNames:[Ljava/lang/String;

.field public compilerLocale:Ljava/util/Locale;

.field public compilerOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

.field public compilerStats:[Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;

.field protected complianceLevel:J

.field public currentRepetition:I

.field public destinationPath:Ljava/lang/String;

.field public destinationPaths:[Ljava/lang/String;

.field private didSpecifySource:Z

.field private didSpecifyTarget:Z

.field enableJavadocOn:Z

.field protected enablePreview:Z

.field public encodings:[Ljava/lang/String;

.field private err:Ljava/io/PrintWriter;

.field private expandedCommandLine:[Ljava/lang/String;

.field public exportedClassFilesCounter:I

.field protected extraProblems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/eclipse/jdt/core/compiler/CategorizedProblem;",
            ">;"
        }
    .end annotation
.end field

.field public filenames:[Ljava/lang/String;

.field public globalErrorsCount:I

.field public globalInfoCount:I

.field public globalProblemsCount:I

.field public globalTasksCount:I

.field public globalWarningsCount:I

.field public ignoreOptionalProblemsFromFolders:[[C

.field private javaHomeCache:Ljava/io/File;

.field private javaHomeChecked:Z

.field public limitedModules:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public lineCount0:J

.field public log:Ljava/lang/String;

.field public logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

.field public maxProblems:I

.field public maxRepetition:I

.field public modNames:[Ljava/lang/String;

.field protected module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

.field public options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected out:Ljava/io/PrintWriter;

.field public pendingErrors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private primaryNullAnnotationsSeen:Z

.field public proceed:Z

.field public proceedOnError:Z

.field public produceRefInfo:Z

.field public progress:Lorg/eclipse/jdt/core/compiler/CompilationProgress;

.field protected releaseVersion:Ljava/lang/String;

.field public rootModules:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public showProgress:Z

.field public startTime:J

.field public systemExitWhenFinished:Z

.field public timing:I

.field public verbose:Z

.field warnAllJavadocOn:Z

.field warnJavadocOn:Z


# direct methods
.method public constructor <init>(Ljava/io/PrintWriter;Ljava/io/PrintWriter;Z)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/batch/Main;-><init>(Ljava/io/PrintWriter;Ljava/io/PrintWriter;ZLjava/util/Map;Lorg/eclipse/jdt/core/compiler/CompilationProgress;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;Ljava/io/PrintWriter;ZLjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/io/PrintWriter;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/batch/Main;-><init>(Ljava/io/PrintWriter;Ljava/io/PrintWriter;ZLjava/util/Map;Lorg/eclipse/jdt/core/compiler/CompilationProgress;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;Ljava/io/PrintWriter;ZLjava/util/Map;Lorg/eclipse/jdt/core/compiler/CompilationProgress;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/io/PrintWriter;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/eclipse/jdt/core/compiler/CompilationProgress;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->addonExports:Ljava/util/List;

    .line 5
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->addonReads:Ljava/util/List;

    .line 6
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->rootModules:Ljava/util/Set;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->javaHomeChecked:Z

    .line 8
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->primaryNullAnnotationsSeen:Z

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->proceed:Z

    .line 10
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->proceedOnError:Z

    .line 11
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->produceRefInfo:Z

    .line 12
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->showProgress:Z

    .line 13
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->systemExitWhenFinished:Z

    .line 14
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->timing:I

    .line 15
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->verbose:Z

    .line 16
    invoke-virtual/range {p0 .. p5}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->initialize(Ljava/io/PrintWriter;Ljava/io/PrintWriter;ZLjava/util/Map;Lorg/eclipse/jdt/core/compiler/CompilationProgress;)V

    .line 17
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->relocalize()V

    return-void
.end method

.method public static synthetic a(Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->lambda$0(Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;)V

    return-void
.end method

.method public static synthetic b([Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->lambda$1([Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;)V

    return-void
.end method

.method private checkVMVersion(J)Z
    .locals 4

    const-string v0, "java.class.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    return v1

    :cond_1
    :try_start_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileConstants;->getComplianceLevelForJavaVersion(I)J

    move-result-wide v2

    cmp-long p1, v2, p1

    if-ltz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_2
    return v1
.end method

.method public static compile(Ljava/lang/String;)Z
    .locals 7

    .line 1
    new-instance v6, Lorg/eclipse/jdt/internal/compiler/batch/Main;

    new-instance v1, Ljava/io/PrintWriter;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    new-instance v2, Ljava/io/PrintWriter;

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/batch/Main;-><init>(Ljava/io/PrintWriter;Ljava/io/PrintWriter;ZLjava/util/Map;Lorg/eclipse/jdt/core/compiler/CompilationProgress;)V

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->tokenize(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->compile([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static compile(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/io/PrintWriter;)Z
    .locals 7

    .line 2
    new-instance v6, Lorg/eclipse/jdt/internal/compiler/batch/Main;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/batch/Main;-><init>(Ljava/io/PrintWriter;Ljava/io/PrintWriter;ZLjava/util/Map;Lorg/eclipse/jdt/core/compiler/CompilationProgress;)V

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->tokenize(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->compile([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static compile([Ljava/lang/String;Ljava/io/PrintWriter;Ljava/io/PrintWriter;Lorg/eclipse/jdt/core/compiler/CompilationProgress;)Z
    .locals 7

    .line 3
    new-instance v6, Lorg/eclipse/jdt/internal/compiler/batch/Main;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/batch/Main;-><init>(Ljava/io/PrintWriter;Ljava/io/PrintWriter;ZLjava/util/Map;Lorg/eclipse/jdt/core/compiler/CompilationProgress;)V

    invoke-virtual {v6, p0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->compile([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static decodeIgnoreOptionalProblemsFromFolders(Ljava/lang/String;)[[C
    .locals 5

    new-instance v0, Ljava/util/StringTokenizer;

    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p0

    new-array p0, p0, [[C

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v4, v1, 0x1

    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    aput-object v3, p0, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v4

    goto :goto_0

    :catch_0
    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    aput-object v2, p0, v4

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    aput-object v2, p0, v1

    move v1, v3

    goto :goto_0
.end method

.method private extractModuleDesc(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v2, "org.eclipse.jdt.core.compiler.compliance"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "org.eclipse.jdt.core.compiler.source"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->getHandlingPolicy()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    move-result-object v3

    new-instance v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    invoke-direct {v4, v0}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->getProblemFactory()Lorg/eclipse/jdt/internal/compiler/IProblemFactory;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;-><init>(Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V

    const/4 v0, 0x0

    invoke-direct {v1, v2, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Z)V

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "module-info.java"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;

    invoke-direct {v2, v3, p1, v3}, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;-><init>([CLjava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    const/4 v4, 0x1

    const/16 v5, 0xa

    invoke-direct {p1, v2, v0, v4, v5}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;III)V

    invoke-virtual {v1, v2, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->parse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->isModuleInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    invoke-direct {v0, p1, v3}, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;)V

    move-object v3, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "module-info.class"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->read(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getModuleDeclaration()Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;

    move-result-object v3
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configure.invalidModuleDescriptor"

    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    return-object v3
.end method

.method private static getAllEncodings(Ljava/util/Set;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-lez v2, :cond_1

    const-string v3, ", "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    aget-object v3, v1, v2

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getLibrariesFiles([Ljava/io/File;)[[Ljava/io/File;
    .locals 6

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/batch/Main$1;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main$1;-><init>()V

    array-length v1, p0

    new-array v2, v1, [[Ljava/io/File;

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_0

    return-object v2

    :cond_0
    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    aput-object v4, v2, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getNewParser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;
    .locals 5

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->getHandlingPolicy()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    move-result-object v2

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-direct {v3, v4}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->getProblemFactory()Lorg/eclipse/jdt/internal/compiler/IProblemFactory;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;-><init>(Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Z)V

    return-object v0
.end method

.method private handleErrorOrWarningToken(Ljava/lang/String;ZI)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const-string v6, "org.eclipse.jdt.core.compiler.problem.invalidJavadoc"

    const-string v7, "org.eclipse.jdt.core.compiler.problem.missingJavadocComments"

    const-string v8, "default"

    const-string v9, "protected"

    const-string v10, "public"

    const-string v11, "org.eclipse.jdt.core.compiler.doc.comment.support"

    const-string v12, "org.eclipse.jdt.core.compiler.problem.missingJavadocTags"

    const-string v13, "org.eclipse.jdt.core.compiler.problem.deprecationWhenOverridingDeprecatedMethod"

    const-string v14, "org.eclipse.jdt.core.compiler.problem.deprecationInDeprecatedCode"

    const/16 v16, 0x0

    const-string v4, "private"

    const-string v15, "enabled"

    move-object/from16 v17, v6

    const-string v6, "disabled"

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_34

    :pswitch_1
    const-string v4, "warningToken"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    const-string v1, "org.eclipse.jdt.core.compiler.problem.unhandledWarningToken"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    const-string v1, "org.eclipse.jdt.core.compiler.problem.unusedWarningToken"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :pswitch_2
    const-string v4, "varargsCast"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    const-string v1, "org.eclipse.jdt.core.compiler.problem.varargsArgumentNeedCast"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :pswitch_3
    const-string v4, "unusedLocal"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    const-string v4, "unusedLocals"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_b

    :cond_1
    const-string v4, "unusedArgument"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "org.eclipse.jdt.core.compiler.problem.unusedParameter"

    if-nez v4, :cond_23

    const-string v4, "unusedArguments"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_a

    :cond_2
    const-string v4, "unusedExceptionParam"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v1, "org.eclipse.jdt.core.compiler.problem.unusedExceptionParameter"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_3
    const-string v4, "unusedImport"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    const-string v4, "unusedImports"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto/16 :goto_9

    :cond_4
    const-string v4, "unusedAllocation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v1, "org.eclipse.jdt.core.compiler.problem.unusedObjectAllocation"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_5
    const-string v4, "unusedPrivate"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v1, "org.eclipse.jdt.core.compiler.problem.unusedPrivateMember"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_6
    const-string v4, "unusedLabel"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v1, "org.eclipse.jdt.core.compiler.problem.unusedLabel"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_7
    const-string v4, "uselessTypeCheck"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v1, "org.eclipse.jdt.core.compiler.problem.unnecessaryTypeCheck"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_8
    const-string v4, "unchecked"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    const-string v4, "unsafe"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto/16 :goto_8

    :cond_9
    const-string v4, "unlikelyCollectionMethodArgumentType"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v1, "org.eclipse.jdt.core.compiler.problem.unlikelyCollectionMethodArgumentType"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_a
    const-string v4, "unlikelyEqualsArgumentType"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v1, "org.eclipse.jdt.core.compiler.problem.unlikelyEqualsArgumentType"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_b
    const-string v4, "unnecessaryElse"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v1, "org.eclipse.jdt.core.compiler.problem.unnecessaryElse"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_c
    const-string v4, "unusedThrown"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v1, "org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownException"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_d
    const-string v4, "unusedThrownWhenOverriding"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    if-eqz v2, :cond_e

    goto :goto_0

    :cond_e
    move-object v15, v6

    :goto_0
    const-string v2, "org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownExceptionWhenOverriding"

    invoke-interface {v1, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_f
    const-string v4, "unusedThrownIncludeDocComment"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    if-eqz v2, :cond_10

    goto :goto_1

    :cond_10
    move-object v15, v6

    :goto_1
    const-string v2, "org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownExceptionIncludeDocCommentReference"

    invoke-interface {v1, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_11
    const-string v4, "unusedThrownExemptExceptionThrowable"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    if-eqz v2, :cond_12

    goto :goto_2

    :cond_12
    move-object v15, v6

    :goto_2
    const-string v2, "org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownExceptionExemptExceptionAndThrowable"

    invoke-interface {v1, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_13
    const-string v4, "unqualifiedField"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    const-string v4, "unqualified-field-access"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    goto/16 :goto_7

    :cond_14
    const-string v4, "unused"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    const-string v1, "org.eclipse.jdt.core.compiler.problem.unusedLocal"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    invoke-direct {v0, v5, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    const-string v1, "org.eclipse.jdt.core.compiler.problem.unusedImport"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    const-string v1, "org.eclipse.jdt.core.compiler.problem.unusedPrivateMember"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    const-string v1, "org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownException"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    const-string v1, "org.eclipse.jdt.core.compiler.problem.unusedLabel"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    const-string v1, "org.eclipse.jdt.core.compiler.problem.unusedTypeArgumentsForMethodInvocation"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    const-string v1, "org.eclipse.jdt.core.compiler.problem.redundantSpecificationOfTypeArguments"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    const-string v1, "org.eclipse.jdt.core.compiler.problem.unusedTypeParameter"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_15
    const-string v4, "unusedParam"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-direct {v0, v5, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_16
    const-string v4, "unusedTypeParameter"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    const-string v1, "org.eclipse.jdt.core.compiler.problem.unusedTypeParameter"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_17
    const-string v4, "unusedParamIncludeDoc"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    if-eqz v2, :cond_18

    goto :goto_3

    :cond_18
    move-object v15, v6

    :goto_3
    const-string v2, "org.eclipse.jdt.core.compiler.problem.unusedParameterIncludeDocCommentReference"

    invoke-interface {v1, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_19
    const-string v4, "unusedParamOverriding"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    if-eqz v2, :cond_1a

    goto :goto_4

    :cond_1a
    move-object v15, v6

    :goto_4
    const-string v2, "org.eclipse.jdt.core.compiler.problem.unusedParameterWhenOverridingConcrete"

    invoke-interface {v1, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1b
    const-string v4, "unusedParamImplementing"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    if-eqz v2, :cond_1c

    goto :goto_5

    :cond_1c
    move-object v15, v6

    :goto_5
    const-string v2, "org.eclipse.jdt.core.compiler.problem.unusedParameterWhenImplementingAbstract"

    invoke-interface {v1, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1d
    const-string v4, "unusedTypeArgs"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const-string v1, "org.eclipse.jdt.core.compiler.problem.unusedTypeArgumentsForMethodInvocation"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    const-string v1, "org.eclipse.jdt.core.compiler.problem.redundantSpecificationOfTypeArguments"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_1e
    const-string v4, "unavoidableGenericProblems"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    if-eqz v2, :cond_1f

    goto :goto_6

    :cond_1f
    move-object v15, v6

    :goto_6
    const-string v2, "org.eclipse.jdt.core.compiler.problem.unavoidableGenericTypeProblems"

    invoke-interface {v1, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_20
    :goto_7
    const-string v1, "org.eclipse.jdt.core.compiler.problem.unqualifiedFieldAccess"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_21
    :goto_8
    const-string v1, "org.eclipse.jdt.core.compiler.problem.uncheckedTypeOperation"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_22
    :goto_9
    const-string v1, "org.eclipse.jdt.core.compiler.problem.unusedImport"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_23
    :goto_a
    invoke-direct {v0, v5, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_24
    :goto_b
    const-string v1, "org.eclipse.jdt.core.compiler.problem.unusedLocal"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :pswitch_4
    const-string v4, "tasks"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    const/16 v5, 0x28

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/16 v6, 0x29

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v5, :cond_25

    if-ltz v6, :cond_25

    if-ge v5, v6, :cond_25

    const/4 v7, 0x1

    add-int/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x7c

    const/16 v7, 0x2c

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    goto :goto_c

    :cond_25
    move-object v5, v4

    :goto_c
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_27

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    if-eqz v2, :cond_26

    move-object v4, v5

    :cond_26
    const-string v5, "org.eclipse.jdt.core.compiler.taskTags"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.compiler.problem.tasks"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_27
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "configure.invalidTaskTag"

    invoke-virtual {v0, v3, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_28
    const-string v4, "typeHiding"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    const-string v1, "org.eclipse.jdt.core.compiler.problem.typeParameterHiding"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :pswitch_5
    const-string v4, "specialParamHiding"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    if-eqz v2, :cond_29

    goto :goto_d

    :cond_29
    move-object v15, v6

    :goto_d
    const-string v2, "org.eclipse.jdt.core.compiler.problem.specialParameterHidingField"

    invoke-interface {v1, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2a
    const-string v4, "syntheticAccess"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    const-string v4, "synthetic-access"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    goto/16 :goto_13

    :cond_2b
    const-string v4, "staticReceiver"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    const-string v1, "org.eclipse.jdt.core.compiler.problem.staticAccessReceiver"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_2c
    const-string v4, "syncOverride"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const-string v1, "org.eclipse.jdt.core.compiler.problem.missingSynchronizedOnInheritedMethod"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_2d
    const-string v4, "semicolon"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    const-string v1, "org.eclipse.jdt.core.compiler.problem.emptyStatement"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_2e
    const-string v4, "serial"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    const-string v1, "org.eclipse.jdt.core.compiler.problem.missingSerialVersion"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_2f
    const-string v4, "suppress"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    if-eqz v3, :cond_33

    const/4 v1, 0x1

    if-eq v3, v1, :cond_30

    goto :goto_11

    :cond_30
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    if-eqz v2, :cond_31

    move-object v3, v15

    goto :goto_e

    :cond_31
    move-object v3, v6

    :goto_e
    const-string v4, "org.eclipse.jdt.core.compiler.problem.suppressWarnings"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    if-eqz v2, :cond_32

    goto :goto_f

    :cond_32
    move-object v15, v6

    :goto_f
    const-string v2, "org.eclipse.jdt.core.compiler.problem.suppressOptionalErrors"

    invoke-interface {v1, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_33
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    if-eqz v2, :cond_34

    goto :goto_10

    :cond_34
    move-object v15, v6

    :goto_10
    const-string v2, "org.eclipse.jdt.core.compiler.problem.suppressWarnings"

    invoke-interface {v1, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v2, "org.eclipse.jdt.core.compiler.problem.suppressOptionalErrors"

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_11
    return-void

    :cond_35
    const-string v4, "static-access"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    const-string v1, "org.eclipse.jdt.core.compiler.problem.staticAccessReceiver"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    const-string v1, "org.eclipse.jdt.core.compiler.problem.indirectStaticAccess"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_36
    const-string v4, "super"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    const-string v1, "org.eclipse.jdt.core.compiler.problem.overridingMethodWithoutSuperInvocation"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_37
    const-string v4, "static-method"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    const-string v1, "org.eclipse.jdt.core.compiler.problem.reportMethodCanBeStatic"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_38
    const-string v4, "switchDefault"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    const-string v1, "org.eclipse.jdt.core.compiler.problem.missingDefaultCase"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_39
    const-string v4, "syntacticAnalysis"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    if-eqz v2, :cond_3a

    goto :goto_12

    :cond_3a
    move-object v15, v6

    :goto_12
    const-string v2, "org.eclipse.jdt.core.compiler.problem.syntacticNullAnalysisForFields"

    invoke-interface {v1, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3b
    :goto_13
    const-string v1, "org.eclipse.jdt.core.compiler.problem.syntheticAccessEmulation"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :pswitch_6
    const-string v4, "raw"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    const-string v1, "org.eclipse.jdt.core.compiler.problem.rawTypeReference"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_3c
    const-string v4, "redundantSuperinterface"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    const-string v1, "org.eclipse.jdt.core.compiler.problem.redundantSuperinterface"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_3d
    const-string v4, "resource"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    const-string v1, "org.eclipse.jdt.core.compiler.problem.unclosedCloseable"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    const-string v1, "org.eclipse.jdt.core.compiler.problem.potentiallyUnclosedCloseable"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    const-string v1, "org.eclipse.jdt.core.compiler.problem.explicitlyClosedAutoCloseable"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_3e
    const-string v4, "removal"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    const-string v1, "org.eclipse.jdt.core.compiler.problem.terminalDeprecation"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v14, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_7
    const-string v4, "pkgDefaultMethod"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_40

    const-string v4, "packageDefaultMethod"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    goto :goto_14

    :cond_3f
    const-string v4, "paramAssign"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    const-string v1, "org.eclipse.jdt.core.compiler.problem.parameterAssignment"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_40
    :goto_14
    const-string v1, "org.eclipse.jdt.core.compiler.problem.overridingPackageDefaultMethod"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :pswitch_8
    const-string v4, "over-sync"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    const-string v1, "org.eclipse.jdt.core.compiler.problem.missingSynchronizedOnInheritedMethod"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_41
    const-string v4, "over-ann"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    const-string v1, "org.eclipse.jdt.core.compiler.problem.missingOverrideAnnotation"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v2, "org.eclipse.jdt.core.compiler.problem.missingOverrideAnnotationForInterfaceMethodImplementation"

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_9
    const-string v4, "nls"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    const-string v1, "org.eclipse.jdt.core.compiler.problem.nonExternalizedStringLiteral"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_42
    const-string v4, "noEffectAssign"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    const-string v1, "org.eclipse.jdt.core.compiler.problem.noEffectAssignment"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_43
    const-string v4, "noImplicitStringConversion"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    const-string v1, "org.eclipse.jdt.core.compiler.problem.noImplicitStringConversion"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_44
    const-string v4, "null"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const-string v1, "org.eclipse.jdt.core.compiler.problem.nullReference"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    const-string v1, "org.eclipse.jdt.core.compiler.problem.potentialNullReference"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    const-string v1, "org.eclipse.jdt.core.compiler.problem.redundantNullCheck"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_45
    const-string v4, "nullDereference"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    const-string v1, "org.eclipse.jdt.core.compiler.problem.nullReference"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    if-nez v2, :cond_46

    const-string v1, "org.eclipse.jdt.core.compiler.problem.potentialNullReference"

    const/16 v3, 0x100

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    const-string v1, "org.eclipse.jdt.core.compiler.problem.redundantNullCheck"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    :cond_46
    return-void

    :cond_47
    const-string v4, "nullAnnotConflict"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    const-string v1, "org.eclipse.jdt.core.compiler.problem.nullAnnotationInferenceConflict"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_48
    const-string v4, "nullAnnotRedundant"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    const-string v1, "org.eclipse.jdt.core.compiler.problem.redundantNullAnnotation"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_49
    const-string v4, "nullAnnot"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5a

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    const/16 v4, 0x28

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/16 v5, 0x29

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eqz v2, :cond_58

    if-ltz v4, :cond_58

    if-ltz v5, :cond_58

    if-ge v4, v5, :cond_58

    iget-boolean v7, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->primaryNullAnnotationsSeen:Z

    const/4 v8, 0x1

    add-int/2addr v4, v8

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x7c

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v5, -0x1

    const-string v9, "configure.invalidNullAnnot"

    if-eq v8, v5, :cond_57

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    if-nez v7, :cond_4a

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_4b

    :cond_4a
    const/4 v10, 0x1

    goto :goto_15

    :cond_4b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0, v9, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :goto_15
    add-int/2addr v8, v10

    const/16 v10, 0x7c

    invoke-virtual {v4, v10, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_56

    invoke-virtual {v4, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    if-nez v7, :cond_4c

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_4d

    :cond_4c
    const/4 v11, 0x1

    goto :goto_16

    :cond_4d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0, v9, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :goto_16
    add-int/2addr v10, v11

    invoke-virtual {v4, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    if-nez v7, :cond_4f

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_4e

    goto :goto_17

    :cond_4e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0, v9, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4f
    :goto_17
    if-nez v7, :cond_50

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->primaryNullAnnotationsSeen:Z

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v7, "org.eclipse.jdt.core.compiler.annotation.nullable"

    invoke-interface {v1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v5, "org.eclipse.jdt.core.compiler.annotation.nonnull"

    invoke-interface {v1, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v5, "org.eclipse.jdt.core.compiler.annotation.nonnullbydefault"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1b

    :cond_50
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_52

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v7, "org.eclipse.jdt.core.compiler.annotation.nullable.secondary"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_51

    goto :goto_18

    :cond_51
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2c

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_18
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v7, "org.eclipse.jdt.core.compiler.annotation.nullable.secondary"

    invoke-interface {v1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_52
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_54

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v5, "org.eclipse.jdt.core.compiler.annotation.nonnull.secondary"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_53

    goto :goto_19

    :cond_53
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2c

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_19
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v5, "org.eclipse.jdt.core.compiler.annotation.nonnull.secondary"

    invoke-interface {v1, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_54
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_58

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v5, "org.eclipse.jdt.core.compiler.annotation.nonnullbydefault.secondary"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_55

    goto :goto_1a

    :cond_55
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2c

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1a
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v5, "org.eclipse.jdt.core.compiler.annotation.nonnullbydefault.secondary"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    :cond_56
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0, v9, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_57
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0, v9, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_58
    :goto_1b
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    if-eqz v2, :cond_59

    goto :goto_1c

    :cond_59
    move-object v15, v6

    :goto_1c
    const-string v4, "org.eclipse.jdt.core.compiler.annotation.nullanalysis"

    invoke-interface {v1, v4, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.compiler.problem.nullSpecViolation"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    const-string v1, "org.eclipse.jdt.core.compiler.problem.nullAnnotationInferenceConflict"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    const-string v1, "org.eclipse.jdt.core.compiler.problem.nullUncheckedConversion"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    const-string v1, "org.eclipse.jdt.core.compiler.problem.redundantNullAnnotation"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_5a
    const-string v4, "nullUncheckedConversion"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    const-string v1, "org.eclipse.jdt.core.compiler.problem.nullUncheckedConversion"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_5b
    const-string v4, "nonnullNotRepeated"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    const-string v1, "org.eclipse.jdt.core.compiler.problem.nonnullParameterAnnotationDropped"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :pswitch_a
    const-string v5, "maskedCatchBlock"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_74

    const-string v5, "maskedCatchBlocks"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5c

    goto/16 :goto_23

    :cond_5c
    const-string v5, "missingJavadocTags"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_60

    invoke-direct {v0, v12, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    if-eqz v2, :cond_5d

    move-object v3, v15

    goto :goto_1d

    :cond_5d
    move-object v3, v6

    :goto_1d
    const-string v5, "org.eclipse.jdt.core.compiler.problem.missingJavadocTagsOverriding"

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    if-eqz v2, :cond_5e

    move-object v6, v15

    :cond_5e
    const-string v3, "org.eclipse.jdt.core.compiler.problem.missingJavadocTagsMethodTypeParameters"

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_5f

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v11, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v2, "org.eclipse.jdt.core.compiler.problem.missingJavadocTagsVisibility"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5f
    return-void

    :cond_60
    const-string v5, "missingJavadocTagsOverriding"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    if-eqz v2, :cond_61

    goto :goto_1e

    :cond_61
    move-object v15, v6

    :goto_1e
    const-string v2, "org.eclipse.jdt.core.compiler.problem.missingJavadocTagsOverriding"

    invoke-interface {v1, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_62
    const-string v5, "missingJavadocTagsMethod"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    if-eqz v2, :cond_63

    goto :goto_1f

    :cond_63
    move-object v15, v6

    :goto_1f
    const-string v2, "org.eclipse.jdt.core.compiler.problem.missingJavadocTagsMethodTypeParameters"

    invoke-interface {v1, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_64
    const-string v5, "missingJavadocTagsVisibility"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_69

    const/16 v5, 0x28

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/16 v5, 0x29

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eqz v2, :cond_65

    if-ltz v3, :cond_65

    if-ltz v5, :cond_65

    if-ge v3, v5, :cond_65

    const/4 v2, 0x1

    add-int/2addr v3, v2

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    :cond_65
    move-object/from16 v2, v16

    if-eqz v2, :cond_66

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_68

    :cond_66
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_68

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_68

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    goto :goto_20

    :cond_67
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "configure.missingJavadocTagsVisibility"

    invoke-virtual {v0, v3, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_68
    :goto_20
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v3, "org.eclipse.jdt.core.compiler.problem.missingJavadocTagsVisibility"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_69
    const-string v5, "missingJavadocComments"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6c

    invoke-direct {v0, v7, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    if-eqz v2, :cond_6a

    move-object v6, v15

    :cond_6a
    const-string v3, "org.eclipse.jdt.core.compiler.problem.missingJavadocCommentsOverriding"

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_6b

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v11, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v2, "org.eclipse.jdt.core.compiler.problem.missingJavadocCommentsVisibility"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6b
    return-void

    :cond_6c
    const-string v5, "missingJavadocCommentsOverriding"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6e

    invoke-direct {v0, v7, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    if-eqz v2, :cond_6d

    goto :goto_21

    :cond_6d
    move-object v15, v6

    :goto_21
    const-string v2, "org.eclipse.jdt.core.compiler.problem.missingJavadocCommentsOverriding"

    invoke-interface {v1, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_6e
    const-string v5, "missingJavadocCommentsVisibility"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_73

    const/16 v5, 0x28

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/16 v5, 0x29

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eqz v2, :cond_6f

    if-ltz v3, :cond_6f

    if-ltz v5, :cond_6f

    if-ge v3, v5, :cond_6f

    const/4 v2, 0x1

    add-int/2addr v3, v2

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    :cond_6f
    move-object/from16 v2, v16

    if-eqz v2, :cond_70

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_72

    :cond_70
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_72

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_72

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    goto :goto_22

    :cond_71
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "configure.missingJavadocCommentsVisibility"

    invoke-virtual {v0, v3, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_72
    :goto_22
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v3, "org.eclipse.jdt.core.compiler.problem.missingJavadocCommentsVisibility"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_73
    const-string v4, "module"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    const-string v1, "org.eclipse.jdt.core.compiler.problem.unstableAutoModuleName"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_74
    :goto_23
    const-string v1, "org.eclipse.jdt.core.compiler.problem.hiddenCatchBlock"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :pswitch_b
    const-string v4, "localHiding"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    const-string v1, "org.eclipse.jdt.core.compiler.problem.localVariableHiding"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :pswitch_c
    const-string v4, "javadoc"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    iput-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->warnJavadocOn:Z

    move-object/from16 v5, v17

    invoke-direct {v0, v5, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    invoke-direct {v0, v12, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :pswitch_d
    move-object/from16 v5, v17

    const-string v7, "indirectStatic"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_75

    const-string v1, "org.eclipse.jdt.core.compiler.problem.indirectStaticAccess"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_75
    const-string v7, "inheritNullAnnot"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_77

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    if-eqz v2, :cond_76

    goto :goto_24

    :cond_76
    move-object v15, v6

    :goto_24
    const-string v2, "org.eclipse.jdt.core.compiler.annotation.inheritNullAnnotations"

    invoke-interface {v1, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_77
    const-string v7, "intfNonInherited"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8c

    const-string v7, "interfaceNonInherited"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_78

    goto/16 :goto_2c

    :cond_78
    const-string v7, "intfAnnotation"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_79

    const-string v1, "org.eclipse.jdt.core.compiler.problem.annotationSuperInterface"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_79
    const-string v7, "intfRedundant"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7a

    const-string v1, "org.eclipse.jdt.core.compiler.problem.redundantSuperinterface"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_7a
    const-string v7, "includeAssertNull"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7c

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    if-eqz v2, :cond_7b

    goto :goto_25

    :cond_7b
    move-object v15, v6

    :goto_25
    const-string v2, "org.eclipse.jdt.core.compiler.problem.includeNullInfoFromAsserts"

    invoke-interface {v1, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_7c
    const-string v7, "invalidJavadoc"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_81

    invoke-direct {v0, v5, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    if-eqz v2, :cond_7d

    move-object v3, v15

    goto :goto_26

    :cond_7d
    move-object v3, v6

    :goto_26
    const-string v5, "org.eclipse.jdt.core.compiler.problem.invalidJavadocTags"

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    if-eqz v2, :cond_7e

    move-object v3, v15

    goto :goto_27

    :cond_7e
    move-object v3, v6

    :goto_27
    const-string v5, "org.eclipse.jdt.core.compiler.problem.invalidJavadocTagsDeprecatedRef"

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    if-eqz v2, :cond_7f

    move-object v6, v15

    :cond_7f
    const-string v3, "org.eclipse.jdt.core.compiler.problem.invalidJavadocTagsNotVisibleRef"

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_80

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v11, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v2, "org.eclipse.jdt.core.compiler.problem.invalidJavadocTagsVisibility"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_80
    return-void

    :cond_81
    const-string v5, "invalidJavadocTag"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_83

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    if-eqz v2, :cond_82

    goto :goto_28

    :cond_82
    move-object v15, v6

    :goto_28
    const-string v2, "org.eclipse.jdt.core.compiler.problem.invalidJavadocTags"

    invoke-interface {v1, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_83
    const-string v5, "invalidJavadocTagDep"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_85

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    if-eqz v2, :cond_84

    goto :goto_29

    :cond_84
    move-object v15, v6

    :goto_29
    const-string v2, "org.eclipse.jdt.core.compiler.problem.invalidJavadocTagsDeprecatedRef"

    invoke-interface {v1, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_85
    const-string v5, "invalidJavadocTagNotVisible"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_87

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    if-eqz v2, :cond_86

    goto :goto_2a

    :cond_86
    move-object v15, v6

    :goto_2a
    const-string v2, "org.eclipse.jdt.core.compiler.problem.invalidJavadocTagsNotVisibleRef"

    invoke-interface {v1, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_87
    const-string v5, "invalidJavadocTagVisibility"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ab

    const/16 v5, 0x28

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/16 v5, 0x29

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eqz v2, :cond_88

    if-ltz v3, :cond_88

    if-ltz v5, :cond_88

    if-ge v3, v5, :cond_88

    const/4 v2, 0x1

    add-int/2addr v3, v2

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    :cond_88
    move-object/from16 v2, v16

    if-eqz v2, :cond_89

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8b

    :cond_89
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8b

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8b

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a

    goto :goto_2b

    :cond_8a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "configure.invalidJavadocTagVisibility"

    invoke-virtual {v0, v3, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8b
    :goto_2b
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v3, "org.eclipse.jdt.core.compiler.problem.invalidJavadocTagsVisibility"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_8c
    :goto_2c
    const-string v1, "org.eclipse.jdt.core.compiler.problem.incompatibleNonInheritedInterfaceMethod"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :pswitch_e
    const-string v4, "hiding"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8d

    const-string v1, "org.eclipse.jdt.core.compiler.problem.hiddenCatchBlock"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    const-string v1, "org.eclipse.jdt.core.compiler.problem.localVariableHiding"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    const-string v1, "org.eclipse.jdt.core.compiler.problem.fieldHiding"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    const-string v1, "org.eclipse.jdt.core.compiler.problem.typeParameterHiding"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_8d
    const-string v4, "hashCode"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    const-string v1, "org.eclipse.jdt.core.compiler.problem.missingHashCodeMethod"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :pswitch_f
    const-string v4, "fieldHiding"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8e

    const-string v1, "org.eclipse.jdt.core.compiler.problem.fieldHiding"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_8e
    const-string v4, "finalBound"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8f

    const-string v1, "org.eclipse.jdt.core.compiler.problem.finalParameterBound"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_8f
    const-string v4, "finally"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_90

    const-string v1, "org.eclipse.jdt.core.compiler.problem.finallyBlockNotCompletingNormally"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_90
    const-string v4, "forbidden"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_91

    const-string v1, "org.eclipse.jdt.core.compiler.problem.forbiddenReference"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_91
    const-string v4, "fallthrough"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    const-string v1, "org.eclipse.jdt.core.compiler.problem.fallthroughCase"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :pswitch_10
    const-string v4, "enumSwitch"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "org.eclipse.jdt.core.compiler.problem.incompleteEnumSwitch"

    if-eqz v4, :cond_92

    invoke-direct {v0, v5, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_92
    const-string v4, "enumSwitchPedantic"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_97

    if-eqz v2, :cond_95

    if-eqz v3, :cond_94

    const/4 v1, 0x1

    if-eq v3, v1, :cond_93

    goto :goto_2d

    :cond_93
    invoke-direct {v0, v5, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    goto :goto_2d

    :cond_94
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "ignore"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    invoke-direct {v0, v5, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    :cond_95
    :goto_2d
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    if-eqz v2, :cond_96

    goto :goto_2e

    :cond_96
    move-object v15, v6

    :goto_2e
    const-string v2, "org.eclipse.jdt.core.compiler.problem.missingEnumCaseDespiteDefault"

    invoke-interface {v1, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_97
    const-string v4, "emptyBlock"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_98

    const-string v1, "org.eclipse.jdt.core.compiler.problem.undocumentedEmptyBlock"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_98
    const-string v4, "enumIdentifier"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_99

    const-string v1, "org.eclipse.jdt.core.compiler.problem.enumIdentifier"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_99
    const-string v4, "exports"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    const-string v1, "org.eclipse.jdt.core.compiler.problem.APILeak"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :pswitch_11
    const-string v4, "deprecation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9a

    const-string v1, "org.eclipse.jdt.core.compiler.problem.deprecation"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v14, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_9a
    const-string v4, "dep-ann"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9b

    const-string v1, "org.eclipse.jdt.core.compiler.problem.missingDeprecatedAnnotation"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_9b
    const-string v4, "discouraged"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9c

    const-string v1, "org.eclipse.jdt.core.compiler.problem.discouragedReference"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_9c
    const-string v4, "deadCode"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    const-string v1, "org.eclipse.jdt.core.compiler.problem.deadCode"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v2, "org.eclipse.jdt.core.compiler.problem.deadCodeInTrivialIfStatement"

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_12
    const-string v4, "constructorName"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9d

    const-string v1, "org.eclipse.jdt.core.compiler.problem.methodWithConstructorName"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_9d
    const-string v4, "conditionAssign"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9e

    const-string v1, "org.eclipse.jdt.core.compiler.problem.possibleAccidentalBooleanAssignment"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_9e
    const-string v4, "compareIdentical"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9f

    const-string v1, "org.eclipse.jdt.core.compiler.problem.comparingIdentical"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_9f
    const-string v4, "charConcat"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    const-string v1, "org.eclipse.jdt.core.compiler.problem.noImplicitStringConversion"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :pswitch_13
    const-string v4, "boxing"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    const-string v1, "org.eclipse.jdt.core.compiler.problem.autoboxing"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :pswitch_14
    move-object/from16 v5, v17

    const-string v4, "allDeprecation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a2

    const-string v1, "org.eclipse.jdt.core.compiler.problem.deprecation"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    const-string v1, "org.eclipse.jdt.core.compiler.problem.terminalDeprecation"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    if-eqz v2, :cond_a0

    move-object v3, v15

    goto :goto_2f

    :cond_a0
    move-object v3, v6

    :goto_2f
    invoke-interface {v1, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    if-eqz v2, :cond_a1

    goto :goto_30

    :cond_a1
    move-object v15, v6

    :goto_30
    invoke-interface {v1, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_a2
    const-string v4, "allJavadoc"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a3

    iput-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->warnJavadocOn:Z

    iput-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->warnAllJavadocOn:Z

    invoke-direct {v0, v5, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    invoke-direct {v0, v12, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    invoke-direct {v0, v7, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_a3
    const-string v4, "assertIdentifier"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a4

    const-string v1, "org.eclipse.jdt.core.compiler.problem.assertIdentifier"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_a4
    const-string v4, "allDeadCode"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a6

    const-string v1, "org.eclipse.jdt.core.compiler.problem.deadCode"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    if-eqz v2, :cond_a5

    goto :goto_31

    :cond_a5
    move-object v15, v6

    :goto_31
    const-string v2, "org.eclipse.jdt.core.compiler.problem.deadCodeInTrivialIfStatement"

    invoke-interface {v1, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_a6
    const-string v4, "allOver-ann"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a8

    const-string v1, "org.eclipse.jdt.core.compiler.problem.missingOverrideAnnotation"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    if-eqz v2, :cond_a7

    goto :goto_32

    :cond_a7
    move-object v15, v6

    :goto_32
    const-string v2, "org.eclipse.jdt.core.compiler.problem.missingOverrideAnnotationForInterfaceMethodImplementation"

    invoke-interface {v1, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_a8
    const-string v4, "all-static-method"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a9

    const-string v1, "org.eclipse.jdt.core.compiler.problem.reportMethodCanBeStatic"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    const-string v1, "org.eclipse.jdt.core.compiler.problem.reportMethodCanBePotentiallyStatic"

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setSeverity(Ljava/lang/String;IZ)V

    return-void

    :cond_a9
    const-string v4, "all"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    if-eqz v2, :cond_aa

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->enableAll(I)V

    goto :goto_33

    :cond_aa
    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->disableAll(I)V

    :goto_33
    return-void

    :cond_ab
    :goto_34
    if-eqz v3, :cond_ae

    const/4 v2, 0x1

    if-eq v3, v2, :cond_ad

    const/16 v2, 0x400

    if-eq v3, v2, :cond_ac

    :goto_35
    move-object/from16 v1, v16

    goto :goto_36

    :cond_ac
    const-string v2, "configure.invalidInfo"

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto :goto_35

    :cond_ad
    const-string v2, "configure.invalidError"

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto :goto_35

    :cond_ae
    const-string v2, "configure.invalidWarning"

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto :goto_35

    :goto_36
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->addPendingErrors(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private initRootModules(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;)V
    .locals 7

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->rootModules:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "configure.invalidModuleName"

    if-nez v1, :cond_3

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->limitedModules:Ljava/util/Set;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getModule([C)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0, v2, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getModule([C)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getExports()[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_3
    if-lt v4, v3, :cond_4

    goto :goto_0

    :cond_4
    aget-object v5, v2, v4

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    invoke-static {v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toString([[C)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_5

    invoke-interface {p2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "configure.packageConflict"

    filled-new-array {v5, v6, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0, v2, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private initializeWarnings(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    invoke-virtual {v0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    const-string p1, "org.eclipse.jdt.core.compiler.debug.localVariable"

    invoke-virtual {v0, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v2, "generate"

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string p1, "org.eclipse.jdt.core.compiler.codegen.unusedLocal"

    invoke-virtual {v0, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v2, "preserve"

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p1, "org.eclipse.jdt.core.compiler.doc.comment.support"

    invoke-virtual {v0, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v2, "enabled"

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string p1, "org.eclipse.jdt.core.compiler.problem.forbiddenReference"

    invoke-virtual {v0, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v1, "error"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "org.eclipse.jdt.core.compiler."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "configure.ioexceptionwarningspropertiesfile"

    invoke-virtual {p0, v2, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    if-eqz v0, :cond_6

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_6
    throw p1

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configure.missingwarningspropertiesfile"

    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isParentOf([C[C)Z
    .locals 5

    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    array-length v0, p0

    aget-char v0, p1, v0

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_1

    array-length v0, p0

    aget-char v0, p1, v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1

    return v2

    :cond_1
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-gez v0, :cond_2

    return v1

    :cond_2
    aget-char v3, p0, v0

    aget-char v4, p1, v0

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private static synthetic lambda$0(Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;)V
    .locals 1

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;->name()[C

    move-result-object v0

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;->targets()[[C

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;->addExports([C[[C)V

    return-void
.end method

.method private static synthetic lambda$1([Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;)V
    .locals 1

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;->addReads([C)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7

    new-instance v6, Lorg/eclipse/jdt/internal/compiler/batch/Main;

    new-instance v1, Ljava/io/PrintWriter;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    new-instance v2, Ljava/io/PrintWriter;

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/batch/Main;-><init>(Ljava/io/PrintWriter;Ljava/io/PrintWriter;ZLjava/util/Map;Lorg/eclipse/jdt/core/compiler/CompilationProgress;)V

    invoke-virtual {v6, p0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->compile([Ljava/lang/String;)Z

    return-void
.end method

.method private printUsage(Ljava/lang/String;)V
    .locals 5

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    .line 3
    const-string v1, "path.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    const-string v2, "compiler.name"

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    const-string v3, "compiler.version"

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6
    const-string v4, "compiler.copyright"

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->logUsage(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->flush()V

    return-void
.end method

.method private processAddonModuleOptions(Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->addonExports:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "configure.invalidModuleOption"

    if-nez v4, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->addonReads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/batch/ModuleFinder;->extractAddonRead(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v4, v3

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    aget-object v2, v3, v0

    new-instance v4, Lorg/eclipse/jdt/internal/compiler/batch/i;

    invoke-direct {v4, v3}, Lorg/eclipse/jdt/internal/compiler/batch/i;-><init>([Ljava/lang/String;)V

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;->MODULE:Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;

    invoke-virtual {p1, v2, v4, v3}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->addModuleUpdate(Ljava/lang/String;Ljava/util/function/Consumer;Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--add-reads "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lorg/eclipse/jdt/internal/compiler/batch/ModuleFinder;->extractAddonExport(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/batch/ModuleFinder$AddExport;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v4, v6, Lorg/eclipse/jdt/internal/compiler/batch/ModuleFinder$AddExport;->sourceModuleName:Ljava/lang/String;

    iget-object v5, v6, Lorg/eclipse/jdt/internal/compiler/batch/ModuleFinder$AddExport;->export:Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

    if-nez v6, :cond_3

    new-array v6, v1, [Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

    aput-object v5, v6, v0

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    array-length v7, v6

    move v8, v0

    :goto_2
    if-lt v8, v7, :cond_4

    array-length v7, v6

    add-int/2addr v7, v1

    new-array v7, v7, [Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

    array-length v8, v6

    invoke-static {v6, v0, v7, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v6

    aput-object v5, v7, v6

    invoke-interface {v2, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    new-instance v6, Lorg/eclipse/jdt/internal/compiler/batch/h;

    invoke-direct {v6, v5}, Lorg/eclipse/jdt/internal/compiler/batch/h;-><init>(Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;)V

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;->PACKAGE:Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;

    invoke-virtual {p1, v4, v6, v5}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->addModuleUpdate(Ljava/lang/String;Ljava/util/function/Consumer;Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;)V

    goto/16 :goto_0

    :cond_4
    aget-object v9, v6, v8

    invoke-interface {v9}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;->name()[C

    move-result-object v9

    invoke-interface {v5}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;->name()[C

    move-result-object v10

    invoke-static {v9, v10}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v9

    if-nez v9, :cond_5

    add-int/2addr v8, v1

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "configure.duplicateExport"

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--add-exports "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private processClassNames(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 11

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->classNames:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    new-array v2, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-array v4, v0, [Ljava/lang/String;

    iget-wide v5, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->complianceLevel:J

    const-wide/32 v7, 0x340000

    cmp-long v5, v5, v7

    const/4 v6, 0x0

    if-gtz v5, :cond_0

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->classNames:[Ljava/lang/String;

    goto :goto_1

    :cond_0
    move v5, v6

    :goto_0
    if-lt v5, v0, :cond_6

    :goto_1
    move v3, v6

    :goto_2
    if-lt v3, v0, :cond_1

    return-object v1

    :cond_1
    aget-object v5, v4, v3

    const/16 v7, 0x2e

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-static {v7, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v5

    goto :goto_3

    :cond_2
    const/4 v7, 0x1

    new-array v7, v7, [[C

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    aput-object v5, v7, v6

    move-object v5, v7

    :goto_3
    aget-object v7, v2, v3

    if-eqz v7, :cond_3

    invoke-virtual {p1, v5, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getType([[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v5

    goto :goto_4

    :cond_3
    invoke-virtual {p1, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getType([[C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v5

    :goto_4
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isBinaryBinding()Z

    move-result v7

    if-eqz v7, :cond_4

    aput-object v5, v1, v3

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->classNames:[Ljava/lang/String;

    aget-object v0, v0, v3

    const-string v1, "configure.invalidClassName"

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->classNames:[Ljava/lang/String;

    aget-object v7, v7, v5

    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-lez v8, :cond_8

    invoke-virtual {v7, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    invoke-virtual {p1, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getModule([C)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v10

    if-eqz v10, :cond_7

    aput-object v10, v2, v5

    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "configure.invalidModuleName"

    invoke-virtual {p0, v0, v9}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_5
    aput-object v7, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0
.end method

.method private processModulePathEntries(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    sget-object v2, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private processPaths([Ljava/lang/String;ILjava/lang/String;Ljava/util/ArrayList;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    const/16 v8, 0x5d

    const/16 v9, 0x5b

    if-lt v6, v4, :cond_9

    if-nez v7, :cond_0

    .line 2
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v5

    .line 3
    :cond_0
    const-string v4, "configure.unexpectedBracket"

    const/4 v6, 0x1

    if-gt v7, v6, :cond_8

    .line 4
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move/from16 v11, p2

    .line 5
    :goto_1
    array-length v12, v1

    if-ge v11, v12, :cond_7

    add-int/lit8 v11, v11, 0x1

    .line 6
    aget-object v12, v1, v11

    .line 7
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    move v14, v5

    :goto_2
    if-lt v14, v13, :cond_3

    const/16 v13, 0x20

    if-nez v7, :cond_1

    .line 8
    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 9
    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sub-int v11, v11, p2

    return v11

    :cond_1
    if-ltz v7, :cond_2

    .line 11
    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 12
    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 13
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 14
    invoke-virtual {v0, v4, v12}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_3
    invoke-virtual {v12, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-eq v15, v9, :cond_5

    if-eq v15, v8, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    :cond_5
    if-gt v7, v6, :cond_6

    add-int/lit8 v7, v7, 0x1

    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 17
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 18
    invoke-virtual {v0, v4, v12}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 20
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 21
    invoke-virtual {v0, v4, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 23
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 24
    invoke-virtual {v0, v4, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 25
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 26
    :cond_9
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v9, :cond_b

    if-eq v10, v8, :cond_a

    goto :goto_4

    :cond_a
    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    :cond_b
    add-int/lit8 v7, v7, 0x1

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method

.method private processPaths([Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)I
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 27
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    const/16 v7, 0x5d

    const/16 v8, 0x5b

    if-lt v5, v3, :cond_8

    if-nez v6, :cond_0

    .line 28
    aput-object v2, p4, v4

    return v4

    .line 29
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move/from16 v5, p2

    :goto_1
    const/4 v9, 0x1

    add-int/2addr v5, v9

    .line 30
    array-length v10, v1

    const-string v11, "configure.unexpectedBracket"

    if-ge v5, v10, :cond_7

    .line 31
    aget-object v10, v1, v5

    .line 32
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    move v13, v4

    :goto_2
    if-lt v13, v12, :cond_3

    const/16 v9, 0x20

    if-nez v6, :cond_1

    .line 33
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 34
    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p4, v4

    sub-int v5, v5, p2

    return v5

    :cond_1
    if-ltz v6, :cond_2

    .line 36
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 37
    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 38
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 39
    invoke-virtual {p0, v11, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 41
    :cond_3
    invoke-virtual {v10, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-eq v14, v8, :cond_5

    if-eq v14, v7, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_5
    if-gt v6, v9, :cond_6

    add-int/lit8 v6, v6, 0x1

    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 42
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 43
    invoke-virtual {p0, v11, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 46
    invoke-virtual {p0, v11, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    :cond_8
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v8, :cond_a

    if-eq v9, v7, :cond_9

    goto :goto_4

    :cond_9
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    :cond_a
    add-int/lit8 v6, v6, 0x1

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private relocalize(Ljava/util/Locale;)V
    .locals 6

    .line 2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->compilerLocale:Ljava/util/Locale;

    .line 3
    :try_start_0
    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$ResourceBundleFactory;->getBundle(Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bundle:Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 4
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Missing resource : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    const-string v5, "org.eclipse.jdt.internal.compiler.batch.messages"

    invoke-virtual {v5, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".properties for locale "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5
    throw v0
.end method

.method private setJavaHome(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/io/File;

    const-string v1, "release"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    const-string v0, "JAVA_VERSION"

    invoke-virtual {v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "\""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->javaHomeCache:Ljava/io/File;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->javaHomeChecked:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configure.invalidSystem"

    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setSeverity(Ljava/lang/String;IZ)V
    .locals 6

    const-string v0, "warning"

    const-string v1, "error"

    const-string v2, "info"

    const/16 v3, 0x400

    const/4 v4, 0x1

    const-string v5, "ignore"

    if-eqz p3, :cond_3

    if-eqz p2, :cond_2

    if-eq p2, v4, :cond_1

    if-eq p2, v3, :cond_0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {p2, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_6

    if-eq p2, v4, :cond_5

    if-eq p2, v3, :cond_4

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {p2, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {p2, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {p2, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {p2, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_0
    return-void
.end method

.method public static final shouldIgnoreOptionalProblems([[C[C)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-lt v2, v1, :cond_1

    return v0

    :cond_1
    aget-object v3, p0, v2

    invoke-static {v3, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->isParentOf([C[C)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public static tokenize(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, " \""

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object p0, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    const/4 p0, 0x0

    move v2, p0

    move v4, v2

    :cond_0
    move v5, v3

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-nez v6, :cond_1

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, p0, v1, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v4, :cond_0

    add-int/lit8 v5, v2, -0x1

    aget-object v7, v0, v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    :cond_2
    :goto_1
    move v5, p0

    goto :goto_0

    :cond_3
    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    if-nez v4, :cond_5

    if-eqz v5, :cond_5

    array-length v5, v0

    if-ne v2, v5, :cond_4

    mul-int/lit8 v5, v2, 0x2

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {v0, p0, v5, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v5

    :cond_4
    add-int/lit8 v5, v2, 0x1

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    aput-object v6, v0, v2

    move v2, v5

    :cond_5
    xor-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    if-eqz v4, :cond_7

    add-int/lit8 v5, v2, -0x1

    aget-object v7, v0, v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    goto :goto_1

    :cond_7
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_8

    if-nez v5, :cond_8

    add-int/lit8 v5, v2, -0x1

    aget-object v7, v0, v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    goto :goto_1

    :cond_8
    array-length v5, v0

    if-ne v2, v5, :cond_9

    mul-int/lit8 v5, v2, 0x2

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {v0, p0, v5, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v5

    :cond_9
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v6, v2, 0x1

    aput-object v5, v0, v2

    move v2, v6

    goto :goto_1
.end method


# virtual methods
.method public addExtraProblems(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->extraProblems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->extraProblems:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->extraProblems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addNewEntry(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    move-object v0, p0

    move-object v8, p2

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v9, "configure.incorrectClasspath"

    if-eqz v1, :cond_8

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/env/AccessRule;

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v6, v3

    move v5, v4

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v5, :cond_0

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    invoke-direct {v2, v1, v3, p2}, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;-><init>([Lorg/eclipse/jdt/internal/compiler/env/AccessRule;BLjava/lang/String;)V

    move-object v4, v2

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v9, p2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->addPendingErrors(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v7, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    const/16 v11, 0x2b

    if-eq v10, v11, :cond_7

    const/16 v11, 0x2d

    const v12, 0x1000133

    if-eq v10, v11, :cond_6

    const/16 v11, 0x3f

    if-eq v10, v11, :cond_5

    const/16 v11, 0x7e

    if-eq v10, v11, :cond_4

    :cond_3
    move v5, v3

    goto :goto_0

    :cond_4
    add-int/lit8 v10, v6, 0x1

    new-instance v11, Lorg/eclipse/jdt/internal/compiler/env/AccessRule;

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    const v12, 0x1000118

    invoke-direct {v11, v7, v12}, Lorg/eclipse/jdt/internal/compiler/env/AccessRule;-><init>([CI)V

    aput-object v11, v1, v6

    :goto_1
    move v6, v10

    goto :goto_0

    :cond_5
    add-int/lit8 v10, v6, 0x1

    new-instance v11, Lorg/eclipse/jdt/internal/compiler/env/AccessRule;

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-direct {v11, v7, v12, v4}, Lorg/eclipse/jdt/internal/compiler/env/AccessRule;-><init>([CIZ)V

    aput-object v11, v1, v6

    goto :goto_1

    :cond_6
    add-int/lit8 v10, v6, 0x1

    new-instance v11, Lorg/eclipse/jdt/internal/compiler/env/AccessRule;

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-direct {v11, v7, v12}, Lorg/eclipse/jdt/internal/compiler/env/AccessRule;-><init>([CI)V

    aput-object v11, v1, v6

    goto :goto_1

    :cond_7
    add-int/lit8 v10, v6, 0x1

    new-instance v11, Lorg/eclipse/jdt/internal/compiler/env/AccessRule;

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-direct {v11, v7, v3}, Lorg/eclipse/jdt/internal/compiler/env/AccessRule;-><init>([CI)V

    aput-object v11, v1, v6

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    move-object v4, v1

    :goto_2
    const-string v1, "none"

    move-object/from16 v2, p5

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object v5, v1

    goto :goto_3

    :cond_9
    move-object v5, v2

    :goto_3
    if-eqz p7, :cond_b

    if-eqz v5, :cond_b

    invoke-static {p2}, Lorg/eclipse/jdt/internal/compiler/util/Util;->archiveFormat(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-gt v1, v2, :cond_a

    goto :goto_4

    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "configure.unexpectedDestinationPathEntryFile"

    invoke-virtual {p0, v2, p2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    :goto_4
    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->releaseVersion:Ljava/lang/String;

    move-object v1, p2

    move-object/from16 v2, p4

    move/from16 v3, p6

    invoke-static/range {v1 .. v7}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->getClasspath(Ljava/lang/String;Ljava/lang/String;ZLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    move-result-object v1

    if-eqz v1, :cond_c

    move-object v2, p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0, v9, p2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->addPendingErrors(Ljava/lang/String;)V

    :cond_d
    :goto_5
    return-void
.end method

.method public addPendingErrors(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->pendingErrors:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->pendingErrors:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->pendingErrors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bind(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bind(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    .line 4
    const-string p1, "No message available"

    return-object p1

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bundle:Ljava/util/ResourceBundle;

    invoke-virtual {v0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    invoke-static {p1, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Missing message: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "org.eclipse.jdt.internal.compiler.batch.messages"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public compile([Ljava/lang/String;)Z
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->configure([Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->progress:Lorg/eclipse/jdt/core/compiler/CompilationProgress;

    if-eqz p1, :cond_1

    .line 6
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->filenames:[Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    array-length v2, v2

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->maxRepetition:I

    mul-int/2addr v2, v3

    :goto_0
    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/core/compiler/CompilationProgress;->begin(I)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :catch_0
    move-exception p1

    goto/16 :goto_5

    :catch_1
    move-exception p1

    goto/16 :goto_6

    .line 7
    :cond_1
    :goto_1
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->proceed:Z

    const/4 v2, 0x1

    if-eqz p1, :cond_6

    .line 8
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->showProgress:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->compiling()V

    .line 9
    :cond_2
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->currentRepetition:I

    :goto_2
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->currentRepetition:I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->maxRepetition:I

    if-lt p1, v3, :cond_4

    .line 10
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->compilerStats:[Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;

    if-eqz p1, :cond_3

    .line 11
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->logAverage()V

    .line 12
    :cond_3
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->showProgress:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printNewLine()V

    goto :goto_3

    .line 13
    :cond_4
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->globalProblemsCount:I

    .line 14
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->globalErrorsCount:I

    .line 15
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->globalWarningsCount:I

    .line 16
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->globalInfoCount:I

    .line 17
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->globalTasksCount:I

    .line 18
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->exportedClassFilesCounter:I

    if-le v3, v2, :cond_5

    .line 19
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->flush()V

    .line 20
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->currentRepetition:I

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->maxRepetition:I

    invoke-virtual {p1, v3, v4}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->logRepetition(II)V

    .line 21
    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->performCompilation()V

    .line 22
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->currentRepetition:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->currentRepetition:I

    goto :goto_2

    .line 23
    :cond_6
    :goto_3
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->systemExitWhenFinished:Z

    if-eqz p1, :cond_8

    .line 24
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->flush()V

    .line 25
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->close()V

    .line 26
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->globalErrorsCount:I

    if-lez p1, :cond_7

    move p1, v0

    goto :goto_4

    :cond_7
    move p1, v1

    :goto_4
    invoke-static {p1}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_8
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->flush()V

    .line 28
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->close()V

    .line 29
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->progress:Lorg/eclipse/jdt/core/compiler/CompilationProgress;

    if-eqz p1, :cond_9

    .line 30
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/compiler/CompilationProgress;->done()V

    .line 31
    :cond_9
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->globalErrorsCount:I

    if-nez p1, :cond_b

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->progress:Lorg/eclipse/jdt/core/compiler/CompilationProgress;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/compiler/CompilationProgress;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_b

    :cond_a
    return v2

    :cond_b
    return v1

    .line 32
    :goto_5
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->logException(Ljava/lang/Exception;)V

    .line 33
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->systemExitWhenFinished:Z

    if-eqz p1, :cond_c

    .line 34
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->flush()V

    .line 35
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->close()V

    .line 36
    invoke-static {v0}, Ljava/lang/System;->exit(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :cond_c
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->flush()V

    .line 38
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->close()V

    .line 39
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->progress:Lorg/eclipse/jdt/core/compiler/CompilationProgress;

    if-eqz p1, :cond_d

    .line 40
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/compiler/CompilationProgress;->done()V

    :cond_d
    return v1

    .line 41
    :goto_6
    :try_start_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->logException(Ljava/lang/Exception;)V

    .line 42
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->systemExitWhenFinished:Z

    if-eqz p1, :cond_e

    .line 43
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->flush()V

    .line 44
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->close()V

    .line 45
    invoke-static {v0}, Ljava/lang/System;->exit(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    :cond_e
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->flush()V

    .line 47
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->close()V

    .line 48
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->progress:Lorg/eclipse/jdt/core/compiler/CompilationProgress;

    if-eqz p1, :cond_f

    .line 49
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/compiler/CompilationProgress;->done()V

    :cond_f
    return v1

    .line 50
    :goto_7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->flush()V

    .line 51
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->close()V

    .line 52
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->progress:Lorg/eclipse/jdt/core/compiler/CompilationProgress;

    if-eqz v0, :cond_10

    .line 53
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/compiler/CompilationProgress;->done()V

    .line 54
    :cond_10
    throw p1
.end method

.method public configure([Ljava/lang/String;)V
    .locals 45

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    if-eqz v0, :cond_105

    array-length v1, v0

    if-nez v1, :cond_0

    goto/16 :goto_68

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v12, 0x0

    iput-object v12, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->annotationPaths:Ljava/util/List;

    const/4 v3, 0x0

    iput-boolean v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->annotationsFromClasspath:Z

    array-length v6, v0

    iput v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->maxRepetition:I

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    move v8, v3

    :goto_0
    const/4 v13, 0x1

    if-lt v8, v6, :cond_1

    move v8, v3

    goto :goto_1

    :cond_1
    aget-object v9, v0, v8

    const-string v10, "@"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_104

    move v8, v13

    :goto_1
    if-eqz v8, :cond_7

    new-array v8, v6, [Ljava/lang/String;

    move v9, v3

    move v10, v9

    :goto_2
    if-lt v9, v6, :cond_2

    move-object/from16 v17, v7

    move-object v0, v8

    goto/16 :goto_7

    :cond_2
    aget-object v14, v0, v9

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    const-string v15, "@"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    :try_start_0
    new-instance v15, Ljava/io/LineNumberReader;

    new-instance v1, Ljava/io/StringReader;

    new-instance v3, Ljava/lang/String;

    new-instance v12, Ljava/io/File;

    move-object/from16 v17, v7

    invoke-virtual {v14, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v12, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-static {v12, v7}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getFileCharContent(Ljava/io/File;Ljava/lang/String;)[C

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v1, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v15, v1}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :cond_3
    :goto_3
    invoke-virtual {v15}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->tokenize(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v7, "#"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configure.invalidexpansionargumentname"

    invoke-virtual {v11, v1, v14}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object/from16 v17, v7

    const/4 v7, 0x0

    :goto_4
    if-eqz v7, :cond_6

    array-length v1, v8

    array-length v3, v7

    add-int/2addr v1, v3

    sub-int/2addr v1, v13

    new-array v1, v1, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v8, v12, v1, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v7, v12, v1, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v10, v3

    move-object v8, v1

    goto :goto_5

    :cond_6
    add-int/lit8 v1, v10, 0x1

    aput-object v14, v8, v10

    move v10, v1

    :goto_5
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v7, v17

    const/4 v1, 0x4

    const/4 v3, 0x0

    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_7
    move-object/from16 v17, v7

    const/4 v12, 0x0

    :goto_6
    if-lt v12, v6, :cond_103

    :goto_7
    array-length v1, v0

    iput-object v0, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->expandedCommandLine:[Ljava/lang/String;

    const/4 v3, -0x1

    move-object/from16 v24, v17

    const/16 p1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    :goto_8
    move-object/from16 v28, v9

    add-int/lit8 v9, v3, 0x1

    move/from16 v29, v3

    const-string v3, "disabled"

    move-object/from16 v30, v12

    const-string v12, "enabled"

    move-object/from16 v31, v14

    const-string v14, "org.eclipse.jdt.core.compiler.compliance"

    if-lt v9, v1, :cond_19

    iget-boolean v1, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->enablePreview:Z

    if-eqz v1, :cond_8

    iget-object v1, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v9, "org.eclipse.jdt.core.compiler.problem.enablePreviewFeatures"

    invoke-interface {v1, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-boolean v1, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->enableJavadocOn:Z

    if-eqz v1, :cond_9

    iget-object v1, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v3, "org.eclipse.jdt.core.compiler.doc.comment.support"

    invoke-interface {v1, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_9
    iget-boolean v1, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->warnJavadocOn:Z

    if-nez v1, :cond_a

    iget-boolean v1, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->warnAllJavadocOn:Z

    if-eqz v1, :cond_b

    :cond_a
    iget-object v1, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v9, "org.eclipse.jdt.core.compiler.doc.comment.support"

    invoke-interface {v1, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v9, "org.eclipse.jdt.core.compiler.problem.unusedParameterIncludeDocCommentReference"

    invoke-interface {v1, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v9, "org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownExceptionIncludeDocCommentReference"

    invoke-interface {v1, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_9
    iget-boolean v1, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->warnJavadocOn:Z

    if-eqz v1, :cond_c

    iget-object v1, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v3, "org.eclipse.jdt.core.compiler.problem.invalidJavadocTags"

    invoke-interface {v1, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v3, "org.eclipse.jdt.core.compiler.problem.invalidJavadocTagsDeprecatedRef"

    invoke-interface {v1, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v3, "org.eclipse.jdt.core.compiler.problem.invalidJavadocTagsNotVisibleRef"

    invoke-interface {v1, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v3, "org.eclipse.jdt.core.compiler.problem.missingJavadocTagsVisibility"

    const-string v9, "private"

    invoke-interface {v1, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    if-nez v21, :cond_17

    if-nez v15, :cond_d

    if-nez v13, :cond_d

    goto/16 :goto_f

    :cond_d
    iget-object v1, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->log:Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->setLog(Ljava/lang/String;)V

    goto :goto_a

    :cond_e
    const/4 v1, 0x0

    iput-boolean v1, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->showProgress:Z

    :goto_a
    iget-object v1, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    invoke-virtual {v1, v8}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->logVersion(Z)V

    invoke-virtual {v11, v10}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->validateOptions(Z)V

    if-nez v26, :cond_f

    iget-object v1, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/32 v20, 0x320000

    cmp-long v1, v8, v20

    if-ltz v1, :cond_f

    iget-object v1, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v3, "org.eclipse.jdt.core.compiler.processAnnotations"

    invoke-interface {v1, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    iget-object v1, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->logCommandLineArguments([Ljava/lang/String;)V

    iget-object v0, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    iget-object v1, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->logOptions(Ljava/util/Map;)V

    iget v0, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->maxRepetition:I

    if-nez v0, :cond_10

    const/4 v0, 0x1

    iput v0, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->maxRepetition:I

    goto :goto_b

    :cond_10
    const/4 v0, 0x1

    :goto_b
    iget v1, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->maxRepetition:I

    const/4 v3, 0x3

    if-lt v1, v3, :cond_11

    iget v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->timing:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_11

    new-array v0, v1, [Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;

    iput-object v0, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->compilerStats:[Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;

    :cond_11
    if-eqz v15, :cond_12

    iget-object v0, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->filenames:[Ljava/lang/String;

    new-array v1, v15, [Ljava/lang/String;

    iput-object v1, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->filenames:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_c

    :cond_12
    const/4 v3, 0x0

    :goto_c
    if-eqz v13, :cond_13

    iget-object v0, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->classNames:[Ljava/lang/String;

    new-array v1, v13, [Ljava/lang/String;

    iput-object v1, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->classNames:[Ljava/lang/String;

    invoke-static {v0, v3, v1, v3, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_13
    move-object/from16 v1, p0

    move-object v3, v6

    move-object v6, v7

    move-object/from16 v7, v31

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v10, p1

    invoke-virtual/range {v1 .. v10}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setPaths(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    if-eqz v30, :cond_14

    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_14

    iget-object v0, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    iget-object v1, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v2, "org.eclipse.jdt.core.encoding"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static/range {v30 .. v30}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->getAllEncodings(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "configure.multipleencodings"

    invoke-virtual {v11, v3, v1, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->logWarning(Ljava/lang/String;)V

    :cond_14
    iget-object v0, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->pendingErrors:Ljava/util/ArrayList;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_15

    const/4 v1, 0x0

    iput-object v1, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->pendingErrors:Ljava/util/ArrayList;

    goto :goto_e

    :cond_15
    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->logPendingError(Ljava/lang/String;)V

    goto :goto_d

    :cond_16
    :goto_e
    return-void

    :cond_17
    :goto_f
    if-nez v28, :cond_18

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->printUsage()V

    :goto_10
    const/4 v0, 0x0

    goto :goto_11

    :cond_18
    move-object/from16 v0, v28

    invoke-direct {v11, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->printUsage(Ljava/lang/String;)V

    goto :goto_10

    :goto_11
    iput-boolean v0, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->proceed:Z

    return-void

    :cond_19
    move-object/from16 v16, v4

    move-object/from16 v32, v28

    const/16 v28, 0x0

    move-object/from16 v4, p1

    if-nez v4, :cond_102

    move-object/from16 p1, v7

    aget-object v7, v0, v9

    move/from16 v33, v8

    const-string v8, "1.6"

    move/from16 v34, v13

    const-string v13, "1.5"

    move-object/from16 v35, v4

    const-string v4, "1.4"

    move-object/from16 v36, v3

    const-string v3, "1.3"

    move-object/from16 v37, v6

    const-string v6, ","

    move/from16 v38, v10

    const-string v10, "org.eclipse.jdt.core.compiler.source"

    move/from16 v39, v15

    const-string v15, "org.eclipse.jdt.core.compiler.codegen.targetPlatform"

    packed-switch v20, :pswitch_data_0

    :pswitch_0
    move-object/from16 v40, v5

    move-object/from16 v3, v23

    :goto_12
    move/from16 v6, v39

    goto/16 :goto_54

    :pswitch_1
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, v7, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_1a

    :goto_14
    :pswitch_2
    move-object/from16 v24, v7

    move v3, v9

    :goto_15
    move-object/from16 v4, v16

    move-object/from16 v12, v30

    :goto_16
    move-object/from16 v14, v31

    move-object/from16 v9, v32

    move/from16 v8, v33

    move/from16 v13, v34

    :goto_17
    move-object/from16 v6, v37

    move/from16 v10, v38

    move/from16 v15, v39

    const/16 v20, 0x0

    :goto_18
    move-object/from16 v7, p1

    :goto_19
    move-object/from16 p1, v35

    goto/16 :goto_8

    :cond_1a
    iget-object v4, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->limitedModules:Ljava/util/Set;

    if-nez v4, :cond_1b

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->limitedModules:Ljava/util/Set;

    :cond_1b
    iget-object v4, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->limitedModules:Ljava/util/Set;

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :pswitch_3
    iput-object v7, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->releaseVersion:Ljava/lang/String;

    invoke-static {v7}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->releaseToJDKLevel(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v12, 0x0

    cmp-long v6, v3, v12

    if-eqz v6, :cond_1c

    iput-wide v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->complianceLevel:J

    invoke-static {v3, v4}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionFromJdkLevel(J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v4, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v4, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v4, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configure.unsupportedReleaseVersion"

    invoke-virtual {v11, v1, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->rootModules:Ljava/util/Set;

    sget-object v4, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    if-ne v3, v4, :cond_1d

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->rootModules:Ljava/util/Set;

    :cond_1d
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, v7, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1a
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_1e

    goto :goto_14

    :cond_1e
    iget-object v4, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->rootModules:Ljava/util/Set;

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :pswitch_5
    invoke-direct {v11, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setJavaHome(Ljava/lang/String;)V

    goto/16 :goto_14

    :pswitch_6
    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->addonReads:Ljava/util/List;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-ne v3, v4, :cond_1f

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->addonReads:Ljava/util/List;

    :cond_1f
    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->addonReads:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    :pswitch_7
    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->addonExports:Ljava/util/List;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-ne v3, v4, :cond_20

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->addonExports:Ljava/util/List;

    :cond_20
    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->addonExports:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    :pswitch_8
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    invoke-direct {v11, v0, v9, v7, v4}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->processPaths([Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v9

    const/4 v8, 0x0

    aget-object v14, v4, v8

    move v3, v6

    move-object/from16 v24, v7

    move/from16 v20, v8

    move-object/from16 v4, v16

    move-object/from16 v12, v30

    move-object/from16 v9, v32

    move/from16 v8, v33

    move/from16 v13, v34

    move-object/from16 v6, v37

    move/from16 v10, v38

    move/from16 v15, v39

    goto/16 :goto_18

    :pswitch_9
    const/4 v3, 0x1

    const/4 v8, 0x0

    new-array v4, v3, [Ljava/lang/String;

    invoke-direct {v11, v0, v9, v7, v4}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->processPaths([Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v9

    aget-object v4, v4, v8

    move-object/from16 v24, v7

    move/from16 v20, v8

    move-object/from16 v12, v30

    move-object/from16 v14, v31

    move-object/from16 v9, v32

    move/from16 v8, v33

    move/from16 v13, v34

    move-object/from16 p1, v35

    move-object/from16 v6, v37

    move/from16 v10, v38

    move/from16 v15, v39

    move-object v7, v4

    move-object/from16 v4, v16

    goto/16 :goto_8

    :pswitch_a
    const/4 v8, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_24

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_24

    const-string v3, "CLASSPATH"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 v3, 0x1

    iput-boolean v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->annotationsFromClasspath:Z

    goto :goto_1c

    :cond_21
    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->annotationPaths:Ljava/util/List;

    if-nez v3, :cond_22

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->annotationPaths:Ljava/util/List;

    :cond_22
    new-instance v3, Ljava/util/StringTokenizer;

    sget-object v4, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-direct {v3, v7, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1b
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_23

    :goto_1c
    goto/16 :goto_14

    :cond_23
    iget-object v4, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->annotationPaths:Ljava/util/List;

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configure.missingAnnotationPath"

    invoke-virtual {v11, v1, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_b
    invoke-direct {v11, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->initializeWarnings(Ljava/lang/String;)V

    goto/16 :goto_14

    :pswitch_c
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, v7, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->classNames:[Ljava/lang/String;

    if-nez v4, :cond_25

    const/4 v4, 0x4

    new-array v6, v4, [Ljava/lang/String;

    iput-object v6, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->classNames:[Ljava/lang/String;

    :cond_25
    move/from16 v13, v34

    :goto_1d
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_26

    move-object/from16 v24, v7

    move v3, v9

    move-object/from16 v4, v16

    move-object/from16 v12, v30

    move-object/from16 v14, v31

    move-object/from16 v9, v32

    move/from16 v8, v33

    goto/16 :goto_17

    :cond_26
    iget-object v4, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->classNames:[Ljava/lang/String;

    array-length v6, v4

    if-ne v6, v13, :cond_27

    mul-int/lit8 v6, v13, 0x2

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->classNames:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v4, v8, v6, v8, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_27
    iget-object v4, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->classNames:[Ljava/lang/String;

    add-int/lit8 v6, v13, 0x1

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v13

    move v13, v6

    goto :goto_1d

    :pswitch_d
    const-string v3, "]"

    invoke-virtual {v7, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v7, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v40, v5

    goto/16 :goto_12

    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[-d "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "configure.incorrectDestinationPathEntry"

    invoke-virtual {v11, v2, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_e
    const-string v3, "[-d"

    invoke-virtual {v7, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2a

    new-instance v3, Ljava/util/StringTokenizer;

    sget-object v4, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v3, v7, v4, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v4, Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1e
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-nez v6, :cond_29

    move-object/from16 v19, v4

    goto/16 :goto_14

    :cond_29
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configure.unexpectedDestinationPathEntry"

    const-string v2, "-endorseddirs"

    invoke-virtual {v11, v1, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_f
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    invoke-direct {v11, v0, v9, v7, v4}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->processPaths([Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v9

    const/4 v6, 0x0

    aget-object v4, v4, v6

    move/from16 v20, v6

    move-object/from16 v24, v7

    move-object/from16 v12, v30

    move-object/from16 v14, v31

    move-object/from16 v9, v32

    move/from16 v8, v33

    move/from16 v13, v34

    move/from16 v10, v38

    move/from16 v15, v39

    move-object/from16 v7, p1

    move-object v6, v4

    move-object/from16 v4, v16

    goto/16 :goto_19

    :pswitch_10
    const/4 v6, 0x0

    const-string v3, "[-d"

    invoke-virtual {v7, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2c

    new-instance v3, Ljava/util/StringTokenizer;

    sget-object v4, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-direct {v3, v7, v4, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v4, Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1f
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-nez v8, :cond_2b

    move-object/from16 v18, v4

    goto/16 :goto_14

    :cond_2b
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configure.unexpectedDestinationPathEntry"

    const-string v2, "-extdir"

    invoke-virtual {v11, v1, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_11
    const/4 v6, 0x4

    :try_start_1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->maxProblems:I

    if-lez v3, :cond_2d

    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v4, "org.eclipse.jdt.core.compiler.maxProblemPerUnit"

    invoke-interface {v3, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_14

    :catch_1
    move-exception v0

    goto :goto_20

    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configure.maxProblems"

    invoke-virtual {v11, v1, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_20
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "configure.maxProblems"

    invoke-virtual {v11, v2, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_12
    const/4 v6, 0x4

    invoke-direct {v11, v0, v9, v7, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->processPaths([Ljava/lang/String;ILjava/lang/String;Ljava/util/ArrayList;)I

    move-result v3

    add-int/2addr v3, v9

    move-object/from16 v24, v7

    goto/16 :goto_15

    :pswitch_13
    const/4 v6, 0x4

    if-eqz v30, :cond_30

    move-object/from16 v14, v30

    invoke-interface {v14, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2e

    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    const-string v4, "configure.differentencodings"

    invoke-static {v14}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->getAllEncodings(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v4, v7, v8}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->logWarning(Ljava/lang/String;)V

    goto :goto_21

    :cond_2e
    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    const-string v4, "configure.differentencoding"

    invoke-static {v14}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->getAllEncodings(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v4, v7, v8}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->logWarning(Ljava/lang/String;)V

    :cond_2f
    :goto_21
    move-object v12, v14

    goto :goto_22

    :cond_30
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move-object v12, v3

    :goto_22
    :try_start_2
    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    const/4 v8, 0x0

    new-array v10, v8, [B

    invoke-direct {v4, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-interface {v12, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v4, "org.eclipse.jdt.core.encoding"

    invoke-interface {v3, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v24, v7

    move v3, v9

    :goto_23
    move-object/from16 v4, v16

    goto/16 :goto_16

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "configure.unsupportedEncoding"

    invoke-virtual {v11, v2, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_14
    move-object/from16 v14, v30

    const/4 v6, 0x4

    iget-boolean v12, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifySource:Z

    if-nez v12, :cond_44

    iget-object v12, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->releaseVersion:Ljava/lang/String;

    if-nez v12, :cond_43

    const/4 v12, 0x1

    iput-boolean v12, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifySource:Z

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_31

    iget-object v4, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v4, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2c

    :cond_31
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v3, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2c

    :cond_32
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    const-string v3, "5"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    const-string v3, "5.0"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    goto/16 :goto_2b

    :cond_33
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    const-string v3, "6"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    const-string v3, "6.0"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    goto/16 :goto_2a

    :cond_34
    const-string v3, "1.7"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    const-string v3, "7"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    const-string v3, "7.0"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    goto/16 :goto_29

    :cond_35
    const-string v3, "1.8"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    const-string v3, "8"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    const-string v3, "8.0"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    goto/16 :goto_28

    :cond_36
    const-string v3, "1.9"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    const-string v3, "9"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    const-string v3, "9.0"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    goto :goto_27

    :cond_37
    const-string v3, "10"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    const-string v3, "10.0"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    goto :goto_26

    :cond_38
    const-string v3, "11"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    const-string v3, "11.0"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    goto :goto_25

    :cond_39
    const-string v3, "12"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    const-string v3, "12.0"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    goto :goto_24

    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configure.source"

    invoke-virtual {v11, v1, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    :goto_24
    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v4, "12"

    invoke-interface {v3, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    :cond_3c
    :goto_25
    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v4, "11"

    invoke-interface {v3, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    :cond_3d
    :goto_26
    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v4, "10"

    invoke-interface {v3, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    :cond_3e
    :goto_27
    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v4, "9"

    invoke-interface {v3, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    :cond_3f
    :goto_28
    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v4, "1.8"

    invoke-interface {v3, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    :cond_40
    :goto_29
    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v4, "1.7"

    invoke-interface {v3, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    :cond_41
    :goto_2a
    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v3, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    :cond_42
    :goto_2b
    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v3, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2c
    move-object/from16 v24, v7

    move v3, v9

    :goto_2d
    move-object v12, v14

    goto/16 :goto_23

    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configure.unsupportedWithRelease"

    const-string v2, "-source"

    invoke-virtual {v11, v1, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configure.duplicateSource"

    invoke-virtual {v11, v1, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_15
    move-object/from16 v14, v30

    const/4 v6, 0x4

    :try_start_3
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->maxRepetition:I

    if-lez v3, :cond_45

    goto :goto_2c

    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configure.repetition"

    invoke-virtual {v11, v1, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "configure.repetition"

    invoke-virtual {v11, v2, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_16
    move-object/from16 v14, v30

    const/4 v6, 0x4

    iput-object v7, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->log:Ljava/lang/String;

    goto :goto_2c

    :pswitch_17
    move-object/from16 v14, v30

    const/4 v6, 0x4

    iget-boolean v10, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    if-nez v10, :cond_5d

    iget-object v10, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->releaseVersion:Ljava/lang/String;

    if-nez v10, :cond_5c

    const/4 v10, 0x1

    iput-boolean v10, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    const-string v10, "1.1"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_46

    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v4, "1.1"

    invoke-interface {v3, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    :cond_46
    const-string v10, "1.2"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_47

    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v4, "1.2"

    invoke-interface {v3, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    :cond_47
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_48

    iget-object v4, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v4, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2c

    :cond_48
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v3, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2c

    :cond_49
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5b

    const-string v3, "5"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5b

    const-string v3, "5.0"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    goto/16 :goto_35

    :cond_4a
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5a

    const-string v3, "6"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5a

    const-string v3, "6.0"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    goto/16 :goto_34

    :cond_4b
    const-string v3, "1.7"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_59

    const-string v3, "7"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_59

    const-string v3, "7.0"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    goto/16 :goto_33

    :cond_4c
    const-string v3, "1.8"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_58

    const-string v3, "8"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_58

    const-string v3, "8.0"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    goto/16 :goto_32

    :cond_4d
    const-string v3, "1.9"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_57

    const-string v3, "9"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_57

    const-string v3, "9.0"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    goto/16 :goto_31

    :cond_4e
    const-string v3, "10"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56

    const-string v3, "10.0"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    goto :goto_30

    :cond_4f
    const-string v3, "11"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_55

    const-string v3, "11.0"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    goto :goto_2f

    :cond_50
    const-string v3, "12"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    const-string v3, "12.0"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    goto :goto_2e

    :cond_51
    const-string v3, "jsr14"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v4, "jsr14"

    invoke-interface {v3, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2c

    :cond_52
    const-string v3, "cldc1.1"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v4, "cldc1.1"

    invoke-interface {v3, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v4, "org.eclipse.jdt.core.compiler.codegen.inlineJsrBytecode"

    invoke-interface {v3, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2c

    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configure.targetJDK"

    invoke-virtual {v11, v1, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_54
    :goto_2e
    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v4, "12"

    invoke-interface {v3, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2c

    :cond_55
    :goto_2f
    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v4, "11"

    invoke-interface {v3, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2c

    :cond_56
    :goto_30
    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v4, "10"

    invoke-interface {v3, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2c

    :cond_57
    :goto_31
    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v4, "9"

    invoke-interface {v3, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2c

    :cond_58
    :goto_32
    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v4, "1.8"

    invoke-interface {v3, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2c

    :cond_59
    :goto_33
    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v4, "1.7"

    invoke-interface {v3, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2c

    :cond_5a
    :goto_34
    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v3, v15, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2c

    :cond_5b
    :goto_35
    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v3, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2c

    :cond_5c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configure.unsupportedWithRelease"

    const-string v2, "-target"

    invoke-virtual {v11, v1, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configure.duplicateTarget"

    invoke-virtual {v11, v1, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_18
    move-object/from16 v14, v30

    const/4 v6, 0x4

    const-string v3, "none"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    const-string v3, "none"

    goto :goto_36

    :cond_5e
    move-object v3, v7

    :goto_36
    invoke-virtual {v11, v3}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->setDestinationPath(Ljava/lang/String;)V

    goto/16 :goto_2c

    :pswitch_19
    move-object/from16 v14, v30

    const/4 v6, 0x4

    invoke-direct {v11, v0, v9, v7, v5}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->processPaths([Ljava/lang/String;ILjava/lang/String;Ljava/util/ArrayList;)I

    move-result v3

    add-int/2addr v3, v9

    move-object/from16 v24, v7

    goto/16 :goto_2d

    :pswitch_1a
    const/4 v10, 0x4

    const-string v15, "-nowarn"

    invoke-virtual {v7, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    const/4 v10, 0x7

    if-eqz v15, :cond_64

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v10, :cond_63

    const/16 v4, 0x8

    if-eq v3, v4, :cond_62

    const/16 v3, 0x5b

    invoke-virtual {v7, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/16 v6, 0x5d

    invoke-virtual {v7, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    const/16 v8, 0x8

    if-le v3, v8, :cond_61

    const/4 v8, -0x1

    if-eq v6, v8, :cond_61

    if-gt v3, v6, :cond_61

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v4

    if-lt v6, v8, :cond_61

    invoke-virtual {v7, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_60

    invoke-static {v3}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->decodeIgnoreOptionalProblemsFromFolders(Ljava/lang/String;)[[C

    move-result-object v3

    iget-object v4, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->ignoreOptionalProblemsFromFolders:[[C

    if-eqz v4, :cond_5f

    array-length v6, v4

    array-length v8, v3

    add-int/2addr v6, v8

    new-array v6, v6, [[C

    array-length v8, v4

    const/4 v10, 0x0

    invoke-static {v4, v10, v6, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->ignoreOptionalProblemsFromFolders:[[C

    array-length v4, v4

    array-length v8, v3

    invoke-static {v3, v10, v6, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v6, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->ignoreOptionalProblemsFromFolders:[[C

    goto/16 :goto_14

    :cond_5f
    iput-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->ignoreOptionalProblemsFromFolders:[[C

    goto/16 :goto_14

    :cond_60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configure.invalidNowarnOption"

    invoke-virtual {v11, v1, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configure.invalidNowarnOption"

    invoke-virtual {v11, v1, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configure.invalidNowarnOption"

    invoke-virtual {v11, v1, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_63
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->disableAll(I)V

    goto/16 :goto_14

    :cond_64
    const-string v15, "["

    invoke-virtual {v7, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_101

    const-string v15, "]"

    invoke-virtual {v7, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_68

    const/16 v15, 0x5b

    invoke-virtual {v7, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    add-int/lit8 v10, v15, 0x1

    move-object/from16 v40, v5

    const/4 v5, 0x1

    if-le v10, v5, :cond_67

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v41, v13

    add-int/lit8 v13, v22, -0x1

    if-lt v10, v5, :cond_66

    if-ge v10, v13, :cond_65

    invoke-virtual {v7, v10, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :try_start_4
    new-instance v10, Ljava/io/InputStreamReader;

    new-instance v13, Ljava/io/ByteArrayInputStream;

    move-object/from16 v43, v6

    move-object/from16 v42, v8

    const/4 v8, 0x0

    new-array v6, v8, [B

    invoke-direct {v13, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v10, v13, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_37
    const/4 v6, 0x0

    goto :goto_38

    :catch_4
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "configure.unsupportedEncoding"

    invoke-virtual {v11, v2, v5}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_65
    move-object/from16 v43, v6

    move-object/from16 v42, v8

    move-object/from16 v5, v35

    goto :goto_37

    :goto_38
    invoke-virtual {v7, v6, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_3a

    :cond_66
    move-object/from16 v43, v6

    move-object/from16 v42, v8

    goto :goto_39

    :cond_67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configure.unexpectedBracket"

    invoke-virtual {v11, v1, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_68
    move-object/from16 v40, v5

    move-object/from16 v43, v6

    move-object/from16 v42, v8

    move-object/from16 v41, v13

    :goto_39
    move-object/from16 v5, v35

    :goto_3a
    const-string v6, ".java"

    invoke-virtual {v7, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6c

    if-nez v25, :cond_69

    invoke-direct {v11, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->extractModuleDesc(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object v3

    if-eqz v3, :cond_69

    new-instance v4, Ljava/lang/String;

    invoke-interface {v3}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([C)V

    iput-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-object/from16 v25, v4

    :cond_69
    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->filenames:[Ljava/lang/String;

    if-nez v3, :cond_6a

    sub-int v3, v1, v9

    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->filenames:[Ljava/lang/String;

    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->encodings:[Ljava/lang/String;

    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->modNames:[Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->destinationPaths:[Ljava/lang/String;

    move/from16 v6, v39

    goto :goto_3b

    :cond_6a
    array-length v4, v3

    move/from16 v6, v39

    if-ne v6, v4, :cond_6b

    array-length v4, v3

    add-int v8, v4, v1

    sub-int/2addr v8, v9

    new-array v10, v8, [Ljava/lang/String;

    iput-object v10, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->filenames:[Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v3, v12, v10, v12, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->encodings:[Ljava/lang/String;

    new-array v10, v8, [Ljava/lang/String;

    iput-object v10, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->encodings:[Ljava/lang/String;

    invoke-static {v3, v12, v10, v12, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->destinationPaths:[Ljava/lang/String;

    new-array v10, v8, [Ljava/lang/String;

    iput-object v10, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->destinationPaths:[Ljava/lang/String;

    invoke-static {v3, v12, v10, v12, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->modNames:[Ljava/lang/String;

    new-array v8, v8, [Ljava/lang/String;

    iput-object v8, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->modNames:[Ljava/lang/String;

    invoke-static {v3, v12, v8, v12, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6b
    :goto_3b
    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->filenames:[Ljava/lang/String;

    aput-object v7, v3, v6

    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->modNames:[Ljava/lang/String;

    aput-object v25, v3, v6

    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->encodings:[Ljava/lang/String;

    add-int/lit8 v4, v6, 0x1

    aput-object v5, v3, v6

    move v15, v4

    move-object/from16 v24, v7

    move v3, v9

    move-object/from16 v4, v16

    move-object/from16 v12, v30

    move-object/from16 v14, v31

    move-object/from16 v9, v32

    move/from16 v8, v33

    move/from16 v13, v34

    move-object/from16 v6, v37

    move/from16 v10, v38

    move-object/from16 v5, v40

    const/16 v20, 0x0

    move-object/from16 v7, p1

    move-object/from16 p1, v28

    goto/16 :goto_8

    :cond_6c
    move/from16 v6, v39

    const-string v8, "-log"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6e

    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->log:Ljava/lang/String;

    if-nez v3, :cond_6d

    const/16 v20, 0x5

    :goto_3c
    move v15, v6

    move-object/from16 v24, v7

    move v3, v9

    :goto_3d
    move-object/from16 v4, v16

    move-object/from16 v12, v30

    move-object/from16 v14, v31

    move-object/from16 v9, v32

    move/from16 v8, v33

    move/from16 v13, v34

    move-object/from16 v6, v37

    move/from16 v10, v38

    :goto_3e
    move-object/from16 v7, p1

    move-object/from16 p1, v5

    :goto_3f
    move-object/from16 v5, v40

    goto/16 :goto_8

    :cond_6d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configure.duplicateLog"

    invoke-virtual {v11, v1, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6e
    const-string v8, "-repeat"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v10, 0x6

    if-eqz v8, :cond_70

    iget v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->maxRepetition:I

    if-gtz v3, :cond_6f

    move v15, v6

    move-object/from16 v24, v7

    move v3, v9

    move/from16 v20, v10

    goto :goto_3d

    :cond_6f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configure.duplicateRepeat"

    invoke-virtual {v11, v1, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_70
    const-string v8, "-maxProblems"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_72

    iget v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->maxProblems:I

    if-gtz v3, :cond_71

    const/16 v20, 0xb

    goto :goto_3c

    :cond_71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configure.duplicateMaxProblems"

    invoke-virtual {v11, v1, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_72
    const-string v8, "--release"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_73

    const/16 v20, 0x1e

    goto :goto_3c

    :cond_73
    const-string v8, "-source"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_74

    move v15, v6

    move-object/from16 v24, v7

    move v3, v9

    move-object/from16 v4, v16

    move-object/from16 v12, v30

    move-object/from16 v14, v31

    move-object/from16 v9, v32

    move/from16 v8, v33

    move/from16 v13, v34

    move-object/from16 v6, v37

    move/from16 v10, v38

    const/16 v20, 0x7

    goto :goto_3e

    :cond_74
    const-string v8, "-encoding"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_75

    const/16 v20, 0x8

    goto/16 :goto_3c

    :cond_75
    const-string v8, "-1.3"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v13, "configure.duplicateCompliance"

    if-eqz v8, :cond_77

    if-nez v38, :cond_76

    iget-object v4, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v4, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_40
    move v15, v6

    move-object/from16 v24, v7

    move v3, v9

    move-object/from16 v4, v16

    move-object/from16 v12, v30

    move-object/from16 v14, v31

    move-object/from16 v9, v32

    move/from16 v8, v33

    move/from16 v13, v34

    move-object/from16 v6, v37

    const/4 v10, 0x1

    :goto_41
    const/16 v20, 0x0

    goto/16 :goto_3e

    :cond_76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v11, v13, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_77
    const-string v3, "-1.4"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    if-nez v38, :cond_78

    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v3, v14, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_40

    :cond_78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v11, v13, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_79
    const-string v3, "-1.5"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7a

    const-string v3, "-5"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7a

    const-string v3, "-5.0"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b

    :cond_7a
    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_67

    :cond_7b
    const-string v3, "-1.6"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7c

    const-string v3, "-6"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7c

    const-string v3, "-6.0"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7d

    :cond_7c
    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_66

    :cond_7d
    const-string v3, "-1.7"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7e

    const-string v3, "-7"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7e

    const-string v3, "-7.0"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7f

    :cond_7e
    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_65

    :cond_7f
    const-string v3, "-1.8"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_80

    const-string v3, "-8"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_80

    const-string v3, "-8.0"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    :cond_80
    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_64

    :cond_81
    const-string v3, "-1.9"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_82

    const-string v3, "-9"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_82

    const-string v3, "-9.0"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    :cond_82
    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_63

    :cond_83
    const-string v3, "-10"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_84

    const-string v3, "-10.0"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    :cond_84
    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_62

    :cond_85
    const-string v3, "-11"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_86

    const-string v3, "-11.0"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_87

    :cond_86
    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_61

    :cond_87
    const-string v3, "-12"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_88

    const-string v3, "-12.0"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_89

    :cond_88
    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_5f

    :cond_89
    const-string v3, "-d"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_8c

    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->destinationPath:Ljava/lang/String;

    if-eqz v3, :cond_8b

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v29, 0x2

    if-ge v3, v1, :cond_8a

    const/16 v1, 0x20

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configure.duplicateOutputPath"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8b
    move v15, v6

    move-object/from16 v24, v7

    move v3, v9

    move-object/from16 v4, v16

    move-object/from16 v12, v30

    move-object/from16 v14, v31

    move-object/from16 v9, v32

    move/from16 v8, v33

    move/from16 v13, v34

    move-object/from16 v6, v37

    move/from16 v10, v38

    const/16 v20, 0x3

    goto/16 :goto_3e

    :cond_8c
    const-string v3, "-classpath"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8d

    const-string v3, "-cp"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8e

    :cond_8d
    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_5e

    :cond_8e
    const-string v3, "-bootclasspath"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_91

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_90

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v29, 0x2

    if-ge v3, v1, :cond_8f

    const/16 v1, 0x20

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configure.duplicateBootClasspath"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_90
    const/16 v20, 0x9

    goto/16 :goto_3c

    :cond_91
    const-string v3, "--enable-preview"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    const/4 v3, 0x1

    iput-boolean v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->enablePreview:Z

    :cond_92
    :goto_42
    move v15, v6

    move-object/from16 v24, v7

    move v3, v9

    move-object/from16 v4, v16

    move-object/from16 v12, v30

    move-object/from16 v14, v31

    move-object/from16 v9, v32

    move/from16 v8, v33

    move/from16 v13, v34

    move-object/from16 v6, v37

    move/from16 v10, v38

    goto/16 :goto_41

    :cond_93
    const-string v3, "--system"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_94

    const/16 v20, 0x1b

    goto/16 :goto_3c

    :cond_94
    const-string v3, "--module-path"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_95

    const-string v3, "-p"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_95

    const-string v3, "--processor-module-path"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    :cond_95
    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_5d

    :cond_96
    const-string v3, "--module-source-path"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_98

    if-nez v37, :cond_97

    const/16 v20, 0x18

    goto/16 :goto_3c

    :cond_97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configure.OneOfModuleOrSourcePath"

    invoke-virtual {v11, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_98
    const-string v3, "--add-exports"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_99

    const/16 v20, 0x19

    goto/16 :goto_3c

    :cond_99
    const-string v3, "--add-reads"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9a

    const/16 v20, 0x1a

    goto/16 :goto_3c

    :cond_9a
    const-string v3, "--add-modules"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9b

    const/16 v20, 0x1d

    goto/16 :goto_3c

    :cond_9b
    const-string v3, "--limit-modules"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9c

    const/16 v20, 0x1f

    goto/16 :goto_3c

    :cond_9c
    const-string v3, "-sourcepath"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a0

    if-eqz v37, :cond_9e

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v29, 0x2

    if-ge v3, v1, :cond_9d

    const/16 v1, 0x20

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configure.duplicateSourcepath"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9e
    if-nez v31, :cond_9f

    const/16 v20, 0xd

    goto/16 :goto_3c

    :cond_9f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configure.OneOfModuleOrSourcePath"

    invoke-virtual {v11, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a0
    const-string v3, "-extdirs"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a3

    if-eqz v18, :cond_a2

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v29, 0x2

    if-ge v3, v1, :cond_a1

    const/16 v1, 0x20

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configure.duplicateExtDirs"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a2
    const/16 v20, 0xc

    goto/16 :goto_3c

    :cond_a3
    const-string v3, "-endorseddirs"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a6

    if-eqz v19, :cond_a5

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v29, 0x2

    if-ge v3, v1, :cond_a4

    const/16 v1, 0x20

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configure.duplicateEndorsedDirs"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a5
    const/16 v20, 0xf

    goto/16 :goto_3c

    :cond_a6
    const-string v3, "-progress"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a7

    const/4 v3, 0x1

    iput-boolean v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->showProgress:Z

    goto/16 :goto_42

    :cond_a7
    const-string v3, "-proceedOnError"

    invoke-virtual {v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_aa

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xf

    if-le v3, v4, :cond_a9

    const-string v3, "-proceedOnError:Fatal"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a8

    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v4, "org.eclipse.jdt.core.compiler.problem.fatalOptionalError"

    invoke-interface {v3, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_43
    const/4 v3, 0x1

    goto :goto_44

    :cond_a8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configure.invalidWarningConfiguration"

    invoke-virtual {v11, v1, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a9
    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v4, "org.eclipse.jdt.core.compiler.problem.fatalOptionalError"

    move-object/from16 v8, v36

    invoke-interface {v3, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_43

    :goto_44
    iput-boolean v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->proceedOnError:Z

    goto/16 :goto_42

    :cond_aa
    move-object/from16 v8, v36

    const/4 v3, 0x1

    const-string v13, "-time"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_ab

    iput v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->timing:I

    goto/16 :goto_42

    :cond_ab
    const-string v3, "-time:detail"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ac

    const/4 v3, 0x3

    iput v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->timing:I

    goto/16 :goto_42

    :cond_ac
    const-string v3, "-version"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f8

    const-string v3, "-v"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    goto/16 :goto_5c

    :cond_ad
    const-string v3, "-showversion"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ae

    move v15, v6

    move-object/from16 v24, v7

    move v3, v9

    move-object/from16 v4, v16

    move-object/from16 v12, v30

    move-object/from16 v14, v31

    move-object/from16 v9, v32

    move/from16 v13, v34

    move-object/from16 v6, v37

    move/from16 v10, v38

    const/4 v8, 0x1

    goto/16 :goto_41

    :cond_ae
    const-string v3, "-deprecation"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_af

    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v4, "org.eclipse.jdt.core.compiler.problem.deprecation"

    const-string v8, "warning"

    invoke-interface {v3, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v15, v6

    move-object/from16 v24, v7

    move v3, v9

    move-object/from16 v4, v16

    move-object/from16 v12, v30

    move-object/from16 v14, v31

    move-object/from16 v9, v32

    move/from16 v8, v33

    move/from16 v13, v34

    move-object/from16 v6, v37

    move/from16 v10, v38

    const/16 v20, 0x0

    const/16 v27, 0x1

    goto/16 :goto_3e

    :cond_af
    const-string v3, "-help"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f7

    const-string v3, "-?"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b0

    goto/16 :goto_5b

    :cond_b0
    const-string v3, "-help:warn"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f6

    const-string v3, "-?:warn"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b1

    goto/16 :goto_5a

    :cond_b1
    const-string v3, "-noExit"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    const/4 v3, 0x0

    iput-boolean v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->systemExitWhenFinished:Z

    goto/16 :goto_42

    :cond_b2
    const-string v3, "-verbose"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b3

    const/4 v3, 0x1

    iput-boolean v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->verbose:Z

    goto/16 :goto_42

    :cond_b3
    const/4 v3, 0x1

    const-string v13, "-referenceInfo"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b4

    iput-boolean v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->produceRefInfo:Z

    goto/16 :goto_42

    :cond_b4
    const-string v3, "-inlineJSR"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b5

    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v4, "org.eclipse.jdt.core.compiler.codegen.inlineJsrBytecode"

    invoke-interface {v3, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_42

    :cond_b5
    const-string v3, "-parameters"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v12, "generate"

    if-eqz v3, :cond_b6

    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v4, "org.eclipse.jdt.core.compiler.codegen.methodParameters"

    invoke-interface {v3, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_42

    :cond_b6
    const-string v3, "-genericsignature"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b7

    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v4, "org.eclipse.jdt.core.compiler.codegen.lambda.genericSignature"

    invoke-interface {v3, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_42

    :cond_b7
    const-string v3, "-g"

    invoke-virtual {v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_bf

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_b8

    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v4, "org.eclipse.jdt.core.compiler.debug.localVariable"

    invoke-interface {v3, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v4, "org.eclipse.jdt.core.compiler.debug.lineNumber"

    invoke-interface {v3, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v4, "org.eclipse.jdt.core.compiler.debug.sourceFile"

    invoke-interface {v3, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_46

    :cond_b8
    const/4 v4, 0x3

    if-le v3, v4, :cond_be

    iget-object v4, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v8, "org.eclipse.jdt.core.compiler.debug.localVariable"

    const-string v10, "do not generate"

    invoke-interface {v4, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v8, "org.eclipse.jdt.core.compiler.debug.lineNumber"

    const-string v10, "do not generate"

    invoke-interface {v4, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v8, "org.eclipse.jdt.core.compiler.debug.sourceFile"

    const-string v10, "do not generate"

    invoke-interface {v4, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x7

    if-ne v3, v4, :cond_b9

    const-string v3, "-g:none"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b9

    goto :goto_46

    :cond_b9
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v8, 0x3

    invoke-virtual {v7, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v13, v43

    invoke-direct {v3, v4, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_45
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_ba

    :goto_46
    goto/16 :goto_42

    :cond_ba
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    const-string v8, "vars"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_bb

    iget-object v4, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v8, "org.eclipse.jdt.core.compiler.debug.localVariable"

    invoke-interface {v4, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_45

    :cond_bb
    const-string v8, "lines"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_bc

    iget-object v4, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v8, "org.eclipse.jdt.core.compiler.debug.lineNumber"

    invoke-interface {v4, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_45

    :cond_bc
    const-string v8, "source"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bd

    iget-object v4, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v8, "org.eclipse.jdt.core.compiler.debug.sourceFile"

    invoke-interface {v4, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_45

    :cond_bd
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configure.invalidDebugOption"

    invoke-virtual {v11, v1, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_be
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configure.invalidDebugOption"

    invoke-virtual {v11, v1, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_bf
    move-object/from16 v13, v43

    const/4 v4, 0x7

    const-string v3, "-info"

    invoke-virtual {v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/16 v12, 0x2b

    if-eqz v3, :cond_c8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v8, 0xa

    if-ne v3, v8, :cond_c0

    const-string v8, "-info:none"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c0

    const/16 v3, 0x400

    invoke-virtual {v11, v3}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->disableAll(I)V

    goto :goto_4a

    :cond_c0
    if-le v3, v10, :cond_c7

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v12, :cond_c2

    const/16 v8, 0x2d

    if-eq v3, v8, :cond_c1

    const/16 v3, 0x400

    invoke-virtual {v11, v3}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->disableAll(I)V

    :goto_47
    const/4 v3, 0x1

    goto :goto_48

    :cond_c1
    move v10, v4

    const/4 v3, 0x0

    goto :goto_48

    :cond_c2
    move v10, v4

    goto :goto_47

    :goto_48
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v3

    const/4 v3, 0x0

    :goto_49
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-nez v10, :cond_c4

    if-eqz v3, :cond_c3

    :goto_4a
    goto/16 :goto_46

    :cond_c3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configure.invalidInfoOption"

    invoke-virtual {v11, v1, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c4
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v3, v3, 0x1

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-eq v14, v12, :cond_c6

    const/16 v13, 0x2d

    if-eq v14, v13, :cond_c5

    goto :goto_4b

    :cond_c5
    const/4 v8, 0x1

    invoke-virtual {v10, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const/4 v8, 0x0

    goto :goto_4b

    :cond_c6
    const/4 v8, 0x1

    invoke-virtual {v10, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const/4 v8, 0x1

    :goto_4b
    invoke-virtual {v11, v10, v8}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->handleInfoToken(Ljava/lang/String;Z)V

    goto :goto_49

    :cond_c7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configure.invalidInfoConfiguration"

    invoke-virtual {v11, v1, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c8
    const-string v3, "-warn"

    invoke-virtual {v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v8, 0xa

    if-ne v3, v8, :cond_c9

    const-string v8, "-warn:none"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c9

    const/4 v8, 0x0

    invoke-virtual {v11, v8}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->disableAll(I)V

    goto :goto_4f

    :cond_c9
    const/4 v8, 0x0

    if-le v3, v10, :cond_d1

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v12, :cond_cb

    const/16 v14, 0x2d

    if-eq v3, v14, :cond_ca

    invoke-virtual {v11, v8}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->disableAll(I)V

    :goto_4c
    const/4 v3, 0x1

    goto :goto_4d

    :cond_ca
    move v10, v4

    const/4 v3, 0x0

    goto :goto_4d

    :cond_cb
    move v10, v4

    goto :goto_4c

    :goto_4d
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v27, :cond_cc

    iget-object v8, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v10, "org.eclipse.jdt.core.compiler.problem.deprecation"

    const-string v13, "warning"

    invoke-interface {v8, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_cc
    move v8, v3

    const/4 v3, 0x0

    :goto_4e
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-nez v10, :cond_ce

    if-eqz v3, :cond_cd

    :goto_4f
    goto/16 :goto_46

    :cond_cd
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configure.invalidWarningOption"

    invoke-virtual {v11, v1, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ce
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v3, v3, 0x1

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-eq v14, v12, :cond_d0

    const/16 v13, 0x2d

    if-eq v14, v13, :cond_cf

    goto :goto_50

    :cond_cf
    const/4 v8, 0x1

    invoke-virtual {v10, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const/4 v8, 0x0

    goto :goto_50

    :cond_d0
    const/4 v8, 0x1

    invoke-virtual {v10, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const/4 v8, 0x1

    :goto_50
    invoke-virtual {v11, v10, v8}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->handleWarningToken(Ljava/lang/String;Z)V

    goto :goto_4e

    :cond_d1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configure.invalidWarningConfiguration"

    invoke-virtual {v11, v1, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d2
    const-string v3, "-err"

    invoke-virtual {v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_da

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-le v3, v4, :cond_d9

    const/4 v3, 0x5

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v12, :cond_d3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_d4

    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->disableAll(I)V

    const/4 v10, 0x5

    :cond_d3
    const/4 v3, 0x1

    goto :goto_51

    :cond_d4
    const/4 v3, 0x0

    :goto_51
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v3

    const/4 v3, 0x0

    :goto_52
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-nez v10, :cond_d6

    if-eqz v3, :cond_d5

    goto/16 :goto_46

    :cond_d5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configure.invalidErrorOption"

    invoke-virtual {v11, v1, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d6
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v3, v3, 0x1

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-eq v14, v12, :cond_d8

    const/16 v13, 0x2d

    if-eq v14, v13, :cond_d7

    goto :goto_53

    :cond_d7
    const/4 v8, 0x1

    invoke-virtual {v10, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const/4 v8, 0x0

    goto :goto_53

    :cond_d8
    const/4 v8, 0x1

    const/16 v13, 0x2d

    invoke-virtual {v10, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const/4 v8, 0x1

    :goto_53
    invoke-virtual {v11, v10, v8}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->handleErrorToken(Ljava/lang/String;Z)V

    goto :goto_52

    :cond_d9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configure.invalidErrorConfiguration"

    invoke-virtual {v11, v1, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_da
    const-string v3, "-target"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_db

    move v15, v6

    move-object/from16 v24, v7

    move v3, v9

    move-object/from16 v4, v16

    move-object/from16 v12, v30

    move-object/from16 v14, v31

    move-object/from16 v9, v32

    move/from16 v8, v33

    move/from16 v13, v34

    move-object/from16 v6, v37

    move/from16 v10, v38

    const/16 v20, 0x4

    goto/16 :goto_3e

    :cond_db
    const-string v3, "-preserveAllLocals"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_dc

    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v4, "org.eclipse.jdt.core.compiler.codegen.unusedLocal"

    const-string v8, "preserve"

    invoke-interface {v3, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_42

    :cond_dc
    const-string v3, "-enableJavadoc"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_dd

    const/4 v3, 0x1

    iput-boolean v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->enableJavadocOn:Z

    goto/16 :goto_42

    :cond_dd
    const-string v3, "-Xemacs"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_de

    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->setEmacs()V

    goto/16 :goto_42

    :cond_de
    const-string v3, "-A"

    invoke-virtual {v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_df

    goto/16 :goto_46

    :cond_df
    const-string v3, "-processorpath"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e0

    const/16 v20, 0x11

    goto/16 :goto_3c

    :cond_e0
    const-string v3, "-processor"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e1

    const/16 v20, 0x12

    goto/16 :goto_3c

    :cond_e1
    const-string v3, "--processor-module-path"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e2

    const/16 v20, 0x1c

    goto/16 :goto_3c

    :cond_e2
    const-string v3, "-proc:only"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e3

    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v4, "org.eclipse.jdt.core.compiler.generateClassFiles"

    invoke-interface {v3, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_42

    :cond_e3
    const-string v3, "-proc:none"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e4

    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v4, "org.eclipse.jdt.core.compiler.processAnnotations"

    invoke-interface {v3, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v15, v6

    move-object/from16 v24, v7

    move v3, v9

    move-object/from16 v4, v16

    move-object/from16 v12, v30

    move-object/from16 v14, v31

    move-object/from16 v9, v32

    move/from16 v8, v33

    move/from16 v13, v34

    move-object/from16 v6, v37

    move/from16 v10, v38

    const/16 v20, 0x0

    const/16 v26, 0x1

    goto/16 :goto_3e

    :cond_e4
    const-string v3, "-s"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e5

    const/16 v20, 0x13

    goto/16 :goto_3c

    :cond_e5
    const-string v3, "-XprintProcessorInfo"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_92

    const-string v3, "-XprintRounds"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e6

    goto/16 :goto_42

    :cond_e6
    const-string v3, "-X"

    invoke-virtual {v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e7

    goto/16 :goto_46

    :cond_e7
    const-string v3, "-J"

    invoke-virtual {v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e8

    goto/16 :goto_46

    :cond_e8
    const-string v3, "-O"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e9

    goto/16 :goto_46

    :cond_e9
    const-string v3, "-classNames"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ea

    const/16 v20, 0x14

    goto/16 :goto_3c

    :cond_ea
    const-string v3, "-properties"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_eb

    const/16 v20, 0x15

    goto/16 :goto_3c

    :cond_eb
    const-string v3, "-missingNullDefault"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ec

    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v4, "org.eclipse.jdt.core.compiler.annotation.missingNonNullByDefaultAnnotation"

    const-string v8, "warning"

    invoke-interface {v3, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3c

    :cond_ec
    const-string v3, "-annotationpath"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ed

    const/16 v20, 0x16

    goto/16 :goto_3c

    :cond_ed
    move-object/from16 v35, v5

    move-object/from16 v3, v23

    :goto_54
    if-nez v3, :cond_f0

    sget-char v4, Ljava/io/File;->separatorChar:C

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_ee

    const/16 v5, 0x2f

    invoke-virtual {v7, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    goto :goto_55

    :cond_ee
    move-object v4, v7

    :goto_55
    const-string v5, "[-d"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ef

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x3

    sub-int/2addr v5, v7

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x10

    move-object/from16 v7, p1

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move v15, v6

    move v3, v9

    move-object/from16 v4, v16

    move-object/from16 v12, v30

    move-object/from16 v14, v31

    move-object/from16 v9, v32

    move/from16 v8, v33

    move/from16 v13, v34

    move-object/from16 p1, v35

    move-object/from16 v6, v37

    move/from16 v10, v38

    goto/16 :goto_3f

    :cond_ef
    move-object/from16 v24, v4

    goto :goto_56

    :cond_f0
    move-object/from16 v24, v7

    move-object/from16 v4, v17

    :goto_56
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_f5

    const-string v4, ".java"

    invoke-static {v5, v4}, Lorg/eclipse/jdt/internal/compiler/batch/FileFinder;->find(Ljava/io/File;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v5, "none"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f1

    const-string v3, "none"

    :cond_f1
    iget-object v5, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->filenames:[Ljava/lang/String;

    if-eqz v5, :cond_f3

    array-length v7, v4

    add-int v15, v7, v6

    new-array v8, v15, [Ljava/lang/String;

    iput-object v8, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->filenames:[Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v5, v10, v8, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->encodings:[Ljava/lang/String;

    new-array v8, v15, [Ljava/lang/String;

    iput-object v8, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->encodings:[Ljava/lang/String;

    invoke-static {v5, v10, v8, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->destinationPaths:[Ljava/lang/String;

    new-array v8, v15, [Ljava/lang/String;

    iput-object v8, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->destinationPaths:[Ljava/lang/String;

    invoke-static {v5, v10, v8, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->modNames:[Ljava/lang/String;

    new-array v8, v15, [Ljava/lang/String;

    iput-object v8, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->modNames:[Ljava/lang/String;

    invoke-static {v5, v10, v8, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->filenames:[Ljava/lang/String;

    invoke-static {v4, v10, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v12, 0x0

    :goto_57
    if-lt v12, v7, :cond_f2

    goto :goto_59

    :cond_f2
    iget-object v4, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->encodings:[Ljava/lang/String;

    add-int v5, v6, v12

    aput-object v35, v4, v5

    iget-object v4, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->destinationPaths:[Ljava/lang/String;

    aput-object v3, v4, v5

    iget-object v4, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->modNames:[Ljava/lang/String;

    aput-object v25, v4, v5

    add-int/lit8 v12, v12, 0x1

    goto :goto_57

    :cond_f3
    iput-object v4, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->filenames:[Ljava/lang/String;

    array-length v5, v4

    new-array v4, v5, [Ljava/lang/String;

    iput-object v4, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->encodings:[Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/String;

    iput-object v4, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->destinationPaths:[Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/String;

    iput-object v4, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->modNames:[Ljava/lang/String;

    const/4 v12, 0x0

    :goto_58
    if-lt v12, v5, :cond_f4

    move v15, v5

    :goto_59
    move-object/from16 v7, p1

    move v3, v9

    move-object/from16 v4, v16

    move-object/from16 p1, v28

    move-object/from16 v17, p1

    move-object/from16 v23, v17

    move-object/from16 v12, v30

    move-object/from16 v14, v31

    move-object/from16 v9, v32

    move/from16 v8, v33

    move/from16 v13, v34

    move-object/from16 v6, v37

    move/from16 v10, v38

    move-object/from16 v5, v40

    const/16 v20, 0x0

    goto/16 :goto_8

    :cond_f4
    iget-object v4, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->encodings:[Ljava/lang/String;

    aput-object v35, v4, v12

    iget-object v4, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->destinationPaths:[Ljava/lang/String;

    aput-object v3, v4, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_58

    :cond_f5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configure.unrecognizedOption"

    invoke-virtual {v11, v1, v4}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f6
    :goto_5a
    const-string v3, "misc.usage.warn"

    move v15, v6

    move-object/from16 v24, v7

    move-object/from16 v4, v16

    move-object/from16 v12, v30

    move-object/from16 v14, v31

    move/from16 v8, v33

    move/from16 v13, v34

    move-object/from16 v6, v37

    move/from16 v10, v38

    const/16 v21, 0x1

    move-object/from16 v7, p1

    move-object/from16 p1, v5

    move-object/from16 v5, v40

    move/from16 v44, v9

    move-object v9, v3

    move/from16 v3, v44

    goto/16 :goto_8

    :cond_f7
    :goto_5b
    move v15, v6

    move-object/from16 v24, v7

    move v3, v9

    move-object/from16 v4, v16

    move-object/from16 v12, v30

    move-object/from16 v14, v31

    move-object/from16 v9, v32

    move/from16 v8, v33

    move/from16 v13, v34

    move-object/from16 v6, v37

    move/from16 v10, v38

    const/16 v20, 0x0

    const/16 v21, 0x1

    goto/16 :goto_3e

    :cond_f8
    :goto_5c
    iget-object v0, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->logVersion(Z)V

    const/4 v4, 0x0

    iput-boolean v4, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->proceed:Z

    return-void

    :goto_5d
    const/16 v20, 0x17

    goto/16 :goto_3c

    :goto_5e
    move/from16 v20, v3

    goto/16 :goto_3c

    :goto_5f
    if-nez v38, :cond_f9

    iget-object v8, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v10, "12"

    invoke-interface {v8, v14, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_60
    move v10, v3

    move/from16 v20, v4

    move v15, v6

    move-object/from16 v24, v7

    move v3, v9

    move-object/from16 v4, v16

    move-object/from16 v12, v30

    move-object/from16 v14, v31

    move-object/from16 v9, v32

    move/from16 v8, v33

    move/from16 v13, v34

    move-object/from16 v6, v37

    goto/16 :goto_3e

    :cond_f9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v11, v13, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_61
    if-nez v38, :cond_fa

    iget-object v8, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v10, "11"

    invoke-interface {v8, v14, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_60

    :cond_fa
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v11, v13, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_62
    if-nez v38, :cond_fb

    iget-object v8, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v10, "10"

    invoke-interface {v8, v14, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_60

    :cond_fb
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v11, v13, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_63
    if-nez v38, :cond_fc

    iget-object v8, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v10, "9"

    invoke-interface {v8, v14, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_60

    :cond_fc
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v11, v13, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_64
    if-nez v38, :cond_fd

    iget-object v8, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v10, "1.8"

    invoke-interface {v8, v14, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_60

    :cond_fd
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v11, v13, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_65
    if-nez v38, :cond_fe

    iget-object v8, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v10, "1.7"

    invoke-interface {v8, v14, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_60

    :cond_fe
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v11, v13, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_66
    if-nez v38, :cond_ff

    iget-object v8, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    move-object/from16 v10, v42

    invoke-interface {v8, v14, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_60

    :cond_ff
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v11, v13, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_67
    if-nez v38, :cond_100

    iget-object v8, v11, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    move-object/from16 v10, v41

    invoke-interface {v8, v14, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_60

    :cond_100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v11, v13, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configure.unexpectedBracket"

    invoke-virtual {v11, v1, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_102
    move-object/from16 v35, v4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configure.unexpectedCustomEncoding"

    move-object/from16 v7, v24

    move-object/from16 v5, v35

    invoke-virtual {v11, v1, v7, v5}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_103
    move-object/from16 v16, v4

    move-object/from16 v40, v5

    move v3, v13

    const/4 v4, 0x0

    const/16 v28, 0x0

    aget-object v1, v0, v12

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, v16

    goto/16 :goto_6

    :cond_104
    move-object/from16 v16, v4

    move-object/from16 v40, v5

    move-object/from16 v17, v7

    move-object/from16 v28, v12

    move v4, v3

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v4, v16

    const/4 v1, 0x4

    goto/16 :goto_0

    :cond_105
    :goto_68
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->printUsage()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public disableAll(I)V
    .locals 6

    const/16 v0, 0x400

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "info"

    goto :goto_0

    :cond_1
    const-string v1, "error"

    goto :goto_0

    :cond_2
    const-string v1, "warning"

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    if-nez p1, :cond_4

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->disableAll(I)V

    :cond_4
    return-void

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "ignore"

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public enableAll(I)V
    .locals 6

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "error"

    goto :goto_0

    :cond_1
    const-string p1, "warning"

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/Map$Entry;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v1, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v0, "org.eclipse.jdt.core.compiler.taskTags"

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    aget-object v3, v0, v2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "ignore"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public extractDestinationPathFromSourceFile(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Ljava/lang/String;
    .locals 3

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IDependent;->getFileName()[C

    move-result-object p1

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v0}, Ljava/lang/String;-><init>([CII)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v1

    :cond_0
    const-string p1, "user.dir"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBatchRequestor()Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/batch/BatchCompilerRequestor;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/compiler/batch/BatchCompilerRequestor;-><init>(Lorg/eclipse/jdt/internal/compiler/batch/Main;)V

    return-object v0
.end method

.method public getCompilationUnits()[Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->filenames:[Ljava/lang/String;

    array-length v1, v1

    new-array v2, v1, [Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-direct {v3, v1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;-><init>(I)V

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v5, "org.eclipse.jdt.core.encoding"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    :cond_0
    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/4 v7, 0x2

    if-lt v6, v7, :cond_1

    return-object v2

    :cond_1
    move v7, v5

    :goto_1
    if-lt v7, v1, :cond_2

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->filenames:[Ljava/lang/String;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    sget-object v9, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->MODULE_INFO_FILE_NAME:[C

    invoke-static {v8, v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->endsWith([C[C)Z

    move-result v9

    if-nez v6, :cond_3

    const/4 v10, 0x1

    goto :goto_2

    :cond_3
    move v10, v5

    :goto_2
    if-ne v9, v10, :cond_7

    invoke-virtual {v3, v8}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->get([C)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_6

    invoke-virtual {v3, v8, v8}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Ljava/io/File;

    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->filenames:[Ljava/lang/String;

    aget-object v9, v9, v7

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->encodings:[Ljava/lang/String;

    aget-object v9, v9, v7

    if-nez v9, :cond_4

    move-object v13, v4

    goto :goto_3

    :cond_4
    move-object v13, v9

    :goto_3
    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    move-object v12, v8

    goto :goto_5

    :catch_0
    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->filenames:[Ljava/lang/String;

    aget-object v8, v8, v7

    goto :goto_4

    :goto_5
    new-instance v8, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;

    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->destinationPaths:[Ljava/lang/String;

    aget-object v14, v9, v7

    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->ignoreOptionalProblemsFromFolders:[[C

    invoke-virtual {v12}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    invoke-static {v9, v10}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->shouldIgnoreOptionalProblems([[C[C)Z

    move-result v15

    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->modNames:[Ljava/lang/String;

    aget-object v16, v9, v7

    const/4 v11, 0x0

    move-object v10, v8

    invoke-direct/range {v10 .. v16}, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;-><init>([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    aput-object v8, v2, v7

    goto :goto_6

    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->filenames:[Ljava/lang/String;

    aget-object v2, v2, v7

    const-string v3, "unit.missing"

    invoke-virtual {v0, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->filenames:[Ljava/lang/String;

    aget-object v2, v2, v7

    const-string v3, "unit.more"

    invoke-virtual {v0, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1
.end method

.method public getHandlingPolicy()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/batch/Main$2;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/compiler/batch/Main$2;-><init>(Lorg/eclipse/jdt/internal/compiler/batch/Main;)V

    return-object v0
.end method

.method public getJavaHome()Ljava/io/File;
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->javaHomeChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->javaHomeChecked:Z

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getJavaHome()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->javaHomeCache:Ljava/io/File;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->javaHomeCache:Ljava/io/File;

    return-object v0
.end method

.method public getLibraryAccess()Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;
    .locals 5

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->checkedClasspaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->filenames:[Ljava/lang/String;

    iget-boolean v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->annotationsFromClasspath:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v4, "org.eclipse.jdt.core.compiler.annotation.nullanalysis"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "enabled"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->limitedModules:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;-><init>([Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;[Ljava/lang/String;ZLjava/util/Set;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->processAddonModuleOptions(Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;)V

    return-object v0
.end method

.method public getProblemFactory()Lorg/eclipse/jdt/internal/compiler/IProblemFactory;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->compilerLocale:Ljava/util/Locale;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;-><init>(Ljava/util/Locale;)V

    return-object v0
.end method

.method public handleBootclasspath(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v9

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x4

    move-object v2, p0

    move-object v4, v9

    move-object v6, p2

    invoke-virtual/range {v2 .. v8}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->processPathEntries(ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->javaHomeCache:Ljava/io/File;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->collectVMBootclasspath(Ljava/util/List;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->javaHomeCache:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "configure.invalidSystem"

    invoke-virtual {p0, v0, p2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public handleClasspath(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;",
            ">;"
        }
    .end annotation

    new-instance v7, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x4

    move-object v0, p0

    move-object v2, v7

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->processPathEntries(ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_1
    const-string p1, "java.class.path"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/util/StringTokenizer;

    sget-object v2, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->releaseVersion:Ljava/lang/String;

    invoke-static {p1, p2, v0, v2, v3}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->getClasspath(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Ljava/util/Map;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "configure.incorrectClasspath"

    invoke-virtual {p0, v2, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->addPendingErrors(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    :goto_2
    const-string p1, "configure.noClasspath"

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->addPendingErrors(Ljava/lang/String;)V

    const-string p1, "user.dir"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->releaseVersion:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->getClasspath(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Ljava/util/Map;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/batch/Main$3;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/compiler/batch/Main$3;-><init>(Lorg/eclipse/jdt/internal/compiler/batch/Main;)V

    :cond_8
    :goto_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    return-object p1

    :cond_9
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    invoke-interface {v2}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_8

    invoke-virtual {p2, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v0}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;->fetchLinkedJars(Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$ClasspathSectionProblemReporter;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v7, v1, v2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto :goto_4
.end method

.method public handleEndorseddirs(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->getJavaHome()Ljava/io/File;

    move-result-object v0

    if-nez p1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    const/4 p1, 0x4

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    const-string p1, "java.endorsed.dirs"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/lib/endorsed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/StringTokenizer;

    sget-object v2, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-direct {v0, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    :goto_1
    move-object p1, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Ljava/io/File;

    const/4 v3, 0x0

    move v4, v3

    :goto_3
    if-lt v4, v1, :cond_a

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->getLibrariesFiles([Ljava/io/File;)[[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_9

    array-length v1, p1

    move v4, v3

    :goto_4
    if-lt v4, v1, :cond_4

    goto :goto_7

    :cond_4
    aget-object v5, p1, v4

    if-eqz v5, :cond_7

    array-length v6, v5

    move v7, v3

    :goto_5
    if-lt v7, v6, :cond_5

    goto :goto_6

    :cond_5
    aget-object v8, v5, v7

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    iget-object v10, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->releaseVersion:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v8, v11, v11, v9, v10}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->getClasspath(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Ljava/util/Map;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_7
    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_8

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "configure.incorrectEndorsedDirsEntry"

    invoke-virtual {p0, v6, v5}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->addPendingErrors(Ljava/lang/String;)V

    :cond_8
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    :goto_7
    return-object v0

    :cond_a
    new-instance v5, Ljava/io/File;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_b
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->EMPTY_CLASSPATH:Ljava/util/ArrayList;

    return-object p1
.end method

.method public handleErrorToken(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->handleErrorOrWarningToken(Ljava/lang/String;ZI)V

    return-void
.end method

.method public handleExtdirs(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->getJavaHome()Ljava/io/File;

    move-result-object v0

    if-nez p1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    const/4 p1, 0x4

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    const-string p1, "java.ext.dirs"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/lib/ext"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/StringTokenizer;

    sget-object v2, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-direct {v0, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-nez p1, :cond_1

    :goto_1
    move-object p1, v1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Ljava/io/File;

    const/4 v3, 0x0

    move v4, v3

    :goto_3
    if-lt v4, v1, :cond_9

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->getLibrariesFiles([Ljava/io/File;)[[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_8

    array-length v1, p1

    move v4, v3

    :goto_4
    if-lt v4, v1, :cond_3

    goto :goto_7

    :cond_3
    aget-object v5, p1, v4

    if-eqz v5, :cond_6

    array-length v6, v5

    move v7, v3

    :goto_5
    if-lt v7, v6, :cond_4

    goto :goto_6

    :cond_4
    aget-object v8, v5, v7

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    iget-object v10, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->releaseVersion:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v8, v11, v11, v9, v10}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->getClasspath(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Ljava/util/Map;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_6
    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_7

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "configure.incorrectExtDirsEntry"

    invoke-virtual {p0, v6, v5}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->addPendingErrors(Ljava/lang/String;)V

    :cond_7
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    :goto_7
    return-object v0

    :cond_9
    new-instance v5, Ljava/io/File;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_a
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->EMPTY_CLASSPATH:Ljava/util/ArrayList;

    return-object p1
.end method

.method public handleInfoToken(Ljava/lang/String;Z)V
    .locals 1

    const/16 v0, 0x400

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->handleErrorOrWarningToken(Ljava/lang/String;ZI)V

    return-void
.end method

.method public handleModuleSourcepath(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->processModulePathEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->destinationPath:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "configure.missingDestinationPath"

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->addPendingErrors(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 p1, 0x0

    move v3, p1

    :goto_0
    if-lt v3, v1, :cond_3

    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->filenames:[Ljava/lang/String;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    goto/16 :goto_7

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->modNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    if-eqz v1, :cond_2

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->filenames:[Ljava/lang/String;

    aget-object p1, v1, p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v1, "configure.notOnModuleSourcePath"

    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v4, Ljava/io/File;

    aget-object v5, v2, v3

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->destinationPath:Ljava/lang/String;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->getNewParser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->releaseVersion:Ljava/lang/String;

    invoke-static/range {v4 .. v9}, Lorg/eclipse/jdt/internal/compiler/batch/ModuleFinder;->findModules(Ljava/io/File;Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/parser/Parser;Ljava/util/Map;ZLjava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_6

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v5}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;->getPath()Ljava/lang/String;

    move-result-object v6

    new-array v7, p1, [Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v6

    invoke-interface {v6}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-interface {v5}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;->getDestinationPath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5}, Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;->getModule()Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object v5

    if-nez v5, :cond_5

    const/4 v5, 0x0

    goto :goto_3

    :cond_5
    new-instance v8, Ljava/lang/String;

    invoke-interface {v5}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object v5

    invoke-direct {v8, v5}, Ljava/lang/String;-><init>([C)V

    move-object v5, v8

    :goto_3
    move v8, p1

    :goto_4
    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->filenames:[Ljava/lang/String;

    array-length v9, v9

    if-lt v8, v9, :cond_6

    goto :goto_2

    :cond_6
    :try_start_0
    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->filenames:[Ljava/lang/String;

    aget-object v10, v10, v8

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/nio/file/Path;->startsWith(Ljava/nio/file/Path;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->modNames:[Ljava/lang/String;

    aput-object v5, v9, v8

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->destinationPaths:[Ljava/lang/String;

    aput-object v7, v9, v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->modNames:[Ljava/lang/String;

    const-string v10, ""

    aput-object v10, v9, v8

    :cond_7
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_8
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_9
    :goto_7
    return-object v0
.end method

.method public handleModulepath(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->processModulePathEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->getNewParser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const/4 v6, 0x1

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->releaseVersion:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {v2 .. v7}, Lorg/eclipse/jdt/internal/compiler/batch/ModuleFinder;->findModules(Ljava/io/File;Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/parser/Parser;Ljava/util/Map;ZLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->getNewParser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const/4 v6, 0x1

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->releaseVersion:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {v2 .. v7}, Lorg/eclipse/jdt/internal/compiler/batch/ModuleFinder;->findModule(Ljava/io/File;Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/parser/Parser;Ljava/util/Map;ZLjava/lang/String;)Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public handleWarningToken(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->handleErrorOrWarningToken(Ljava/lang/String;ZI)V

    return-void
.end method

.method public initialize(Ljava/io/PrintWriter;Ljava/io/PrintWriter;Z)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->initialize(Ljava/io/PrintWriter;Ljava/io/PrintWriter;ZLjava/util/Map;Lorg/eclipse/jdt/core/compiler/CompilationProgress;)V

    return-void
.end method

.method public initialize(Ljava/io/PrintWriter;Ljava/io/PrintWriter;ZLjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/io/PrintWriter;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 2
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->initialize(Ljava/io/PrintWriter;Ljava/io/PrintWriter;ZLjava/util/Map;Lorg/eclipse/jdt/core/compiler/CompilationProgress;)V

    return-void
.end method

.method public initialize(Ljava/io/PrintWriter;Ljava/io/PrintWriter;ZLjava/util/Map;Lorg/eclipse/jdt/core/compiler/CompilationProgress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/io/PrintWriter;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/eclipse/jdt/core/compiler/CompilationProgress;",
            ")V"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    invoke-direct {v0, p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;-><init>(Lorg/eclipse/jdt/internal/compiler/batch/Main;Ljava/io/PrintWriter;Ljava/io/PrintWriter;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->proceed:Z

    .line 5
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->out:Ljava/io/PrintWriter;

    .line 6
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->err:Ljava/io/PrintWriter;

    .line 7
    iput-boolean p3, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->systemExitWhenFinished:Z

    .line 8
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;-><init>()V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->getMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->ignoreOptionalProblemsFromFolders:[[C

    .line 10
    iput-object p5, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->progress:Lorg/eclipse/jdt/core/compiler/CompilationProgress;

    const/4 p2, 0x0

    if-eqz p4, :cond_3

    .line 11
    const-string p3, "org.eclipse.jdt.core.compiler.source"

    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, p2

    :goto_0
    iput-boolean p3, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifySource:Z

    .line 12
    const-string p3, "org.eclipse.jdt.core.compiler.codegen.targetPlatform"

    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move v0, p2

    :goto_1
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    .line 13
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_3

    .line 14
    :cond_2
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 15
    iget-object p4, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p4, p5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 16
    :cond_3
    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifySource:Z

    .line 17
    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    .line 18
    :goto_3
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->classNames:[Ljava/lang/String;

    return-void
.end method

.method public initializeAnnotationProcessorManager()V
    .locals 3

    const-string v0, "org.eclipse.jdt.internal.compiler.apt.dispatch.BatchAnnotationProcessorManager"

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->expandedCommandLine:[Ljava/lang/String;

    invoke-virtual {v1, p0, v2}, Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;->configure(Ljava/lang/Object;[Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->err:Ljava/io/PrintWriter;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;->setErr(Ljava/io/PrintWriter;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->out:Ljava/io/PrintWriter;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;->setOut(Ljava/io/PrintWriter;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->batchCompiler:Lorg/eclipse/jdt/internal/compiler/Compiler;

    iput-object v1, v2, Lorg/eclipse/jdt/internal/compiler/Compiler;->annotationProcessorManager:Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedClassVersionError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->logIncorrectVMVersionForAnnotationProcessing()V

    :goto_0
    return-void

    :catch_1
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;-><init>()V

    throw v0

    :catch_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->logUnavaibleAPT(Ljava/lang/String;)V

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;-><init>()V

    throw v0
.end method

.method public loggingExtraProblems()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->loggingExtraProblems(Lorg/eclipse/jdt/internal/compiler/batch/Main;)V

    return-void
.end method

.method public outputClassFiles(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V
    .locals 11

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->hasErrors()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->proceedOnError:Z

    if-eqz v0, :cond_6

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getClassFiles()[Lorg/eclipse/jdt/internal/compiler/ClassFile;

    move-result-object v0

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;->destinationPath:Ljava/lang/String;

    const-string v2, "none"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->destinationPath:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->extractDestinationPathFromSourceFile(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    move p1, v4

    goto :goto_2

    :cond_1
    if-eq v1, v2, :cond_3

    :goto_1
    move p1, v3

    goto :goto_2

    :cond_2
    if-eq v1, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :goto_2
    if-eqz v1, :cond_6

    array-length v2, v0

    move v5, v4

    :goto_3
    if-lt v5, v2, :cond_4

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->batchCompiler:Lorg/eclipse/jdt/internal/compiler/Compiler;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->releaseClassFiles([Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    goto :goto_7

    :cond_4
    aget-object v6, v0, v5

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->fileName()[C

    move-result-object v7

    array-length v8, v7

    add-int/lit8 v9, v8, 0x6

    new-array v9, v9, [C

    invoke-static {v7, v4, v9, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;->SUFFIX_class:[C

    const/4 v10, 0x6

    invoke-static {v7, v4, v9, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v7, 0x2f

    sget-char v8, Ljava/io/File;->separatorChar:C

    invoke-static {v9, v7, v8}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>([C)V

    :try_start_0
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->compilerOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v8, v8, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->verbose:Z

    if-eqz v8, :cond_5

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->out:Ljava/io/PrintWriter;

    sget-object v9, Lorg/eclipse/jdt/internal/compiler/util/Messages;->compilation_write:Ljava/lang/String;

    iget v10, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->exportedClassFilesCounter:I

    add-int/2addr v10, v3

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v10, v7}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :catch_0
    move-exception v6

    goto :goto_5

    :cond_5
    :goto_4
    invoke-static {p1, v1, v7, v6}, Lorg/eclipse/jdt/internal/compiler/util/Util;->writeToDisk(ZLjava/lang/String;Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    invoke-virtual {v6, p1, v1, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->logClassFile(ZLjava/lang/String;Ljava/lang/String;)V

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->exportedClassFilesCounter:I

    add-int/2addr v6, v3

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->exportedClassFilesCounter:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :goto_5
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    invoke-virtual {v8, v1, v7, v6}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->logNoClassFileCreated(Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;)V

    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    :goto_7
    return-void
.end method

.method public performCompilation()V
    .locals 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->startTime:J

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->getLibraryAccess()Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->compilerOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    const/4 v10, 0x0

    iput-boolean v10, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->performMethodsFullRecovery:Z

    iput-boolean v10, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->performStatementsRecovery:Z

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/Compiler;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->getHandlingPolicy()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->compilerOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->getBatchRequestor()Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;

    move-result-object v6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->getProblemFactory()Lorg/eclipse/jdt/internal/compiler/IProblemFactory;

    move-result-object v7

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->out:Ljava/io/PrintWriter;

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->progress:Lorg/eclipse/jdt/core/compiler/CompilationProgress;

    move-object v2, v1

    move-object v3, v0

    invoke-direct/range {v2 .. v9}, Lorg/eclipse/jdt/internal/compiler/Compiler;-><init>(Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;Ljava/io/PrintWriter;Lorg/eclipse/jdt/core/compiler/CompilationProgress;)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->batchCompiler:Lorg/eclipse/jdt/internal/compiler/Compiler;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->maxRepetition:I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->currentRepetition:I

    sub-int/2addr v2, v3

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/Compiler;->remainingIterations:I

    const-string v1, "jdt.compiler.useSingleThread"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->batchCompiler:Lorg/eclipse/jdt/internal/compiler/Compiler;

    if-eqz v1, :cond_0

    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_2

    :cond_0
    :goto_0
    iput-boolean v10, v2, Lorg/eclipse/jdt/internal/compiler/Compiler;->useSingleThread:Z

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->compilerOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-wide v2, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v4, 0x320000

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->processAnnotations:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, v4, v5}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->checkVMVersion(J)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->initializeAnnotationProcessorManager()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->classNames:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->batchCompiler:Lorg/eclipse/jdt/internal/compiler/Compiler;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->processClassNames(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/Compiler;->setBinaryTypes([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->logIncorrectVMVersionForAnnotationProcessing()V

    :cond_2
    :goto_1
    const-wide/32 v1, 0x350000

    invoke-direct {p0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->checkVMVersion(J)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->batchCompiler:Lorg/eclipse/jdt/internal/compiler/Compiler;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {p0, v1, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->initRootModules(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;)V

    :cond_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->compilerOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->verbose:Z

    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->verbose:Z

    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->produceRefInfo:Z

    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->produceReferenceInfo:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->startLoggingSources()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->batchCompiler:Lorg/eclipse/jdt/internal/compiler/Compiler;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->getCompilationUnits()[Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/Compiler;->compile([Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->endLoggingSources()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->extraProblems:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->loggingExtraProblems()V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->extraProblems:Ljava/util/ArrayList;

    :cond_4
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->compilerStats:[Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;

    if-eqz v1, :cond_5

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->currentRepetition:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->batchCompiler:Lorg/eclipse/jdt/internal/compiler/Compiler;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/Compiler;->stats:Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;

    aput-object v3, v1, v2

    :cond_5
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printStats()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->cleanup()V

    return-void

    :catchall_1
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->endLoggingSources()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->cleanup()V

    throw v1
.end method

.method public printUsage()V
    .locals 1

    .line 1
    const-string v0, "misc.usage"

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->printUsage(Ljava/lang/String;)V

    return-void
.end method

.method public processPathEntries(ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p3

    new-instance v10, Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Ljava/util/StringTokenizer;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x1

    invoke-direct {v0, v9, v1, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    move-object v14, v1

    move-object/from16 v16, v14

    move v15, v2

    move v1, v0

    :cond_0
    :goto_1
    const/4 v3, 0x2

    if-ge v0, v13, :cond_1

    const/16 v4, 0x63

    if-ne v1, v4, :cond_2

    :cond_1
    const/4 v6, 0x3

    goto/16 :goto_f

    :cond_2
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v4, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v7, 0xb

    const/4 v2, 0x7

    if-eqz v4, :cond_9

    if-eqz v1, :cond_4

    if-eq v1, v11, :cond_7

    if-eq v1, v3, :cond_7

    const/4 v5, 0x3

    if-eq v1, v5, :cond_4

    const/4 v0, 0x6

    if-eq v1, v0, :cond_6

    if-eq v1, v2, :cond_5

    const/16 v0, 0x8

    if-eq v1, v0, :cond_8

    const/16 v0, 0xa

    if-eq v1, v0, :cond_4

    if-eq v1, v7, :cond_3

    move v0, v6

    move v4, v7

    :goto_2
    const/16 v1, 0x63

    :goto_3
    const/4 v7, 0x5

    goto/16 :goto_e

    :cond_3
    add-int/lit8 v0, v15, 0x1

    move v4, v7

    :goto_4
    const/4 v1, 0x5

    goto :goto_3

    :cond_4
    move/from16 v18, v6

    goto :goto_6

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configure.incorrectDestinationPathEntry"

    invoke-virtual {v8, v1, v9}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move v0, v6

    move v4, v7

    const/4 v1, 0x4

    goto :goto_3

    :cond_7
    const/4 v5, 0x3

    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v4, 0x5

    move-object v2, v14

    move-object v3, v10

    move-object/from16 v4, p4

    move/from16 v17, v5

    move-object/from16 v5, v16

    move/from16 v18, v6

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->addNewEntry(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    move/from16 v0, v18

    const/4 v1, 0x3

    :goto_5
    const/16 v4, 0xb

    goto :goto_3

    :goto_6
    move/from16 v0, v18

    goto :goto_5

    :cond_9
    move/from16 v18, v6

    const-string v4, "["

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    if-eqz v1, :cond_e

    if-eq v1, v11, :cond_d

    if-eq v1, v3, :cond_c

    const/16 v0, 0x8

    if-eq v1, v0, :cond_b

    const/16 v4, 0xb

    if-eq v1, v4, :cond_a

    :goto_7
    move/from16 v0, v18

    goto :goto_2

    :cond_a
    move v0, v15

    goto :goto_9

    :cond_b
    const/16 v4, 0xb

    move/from16 v0, v18

    goto :goto_4

    :cond_c
    const/16 v4, 0xb

    const/16 v0, 0x9

    move v1, v0

    :goto_8
    move/from16 v0, v18

    goto :goto_3

    :cond_d
    const/16 v4, 0xb

    goto :goto_9

    :cond_e
    const/16 v4, 0xb

    const-string v14, ""

    :goto_9
    move v15, v0

    move/from16 v0, v18

    const/16 v1, 0xa

    goto :goto_3

    :cond_f
    const/16 v4, 0xb

    const-string v0, "]"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x6

    if-eq v1, v0, :cond_12

    if-eq v1, v2, :cond_11

    const/16 v0, 0xa

    if-eq v1, v0, :cond_10

    goto :goto_7

    :cond_10
    move v1, v4

    goto :goto_8

    :cond_11
    move/from16 v0, v18

    const/16 v1, 0x8

    goto/16 :goto_3

    :cond_12
    move v1, v3

    goto :goto_8

    :cond_13
    const/4 v0, 0x6

    if-eqz v1, :cond_1b

    const/4 v6, 0x3

    if-eq v1, v6, :cond_1b

    const/4 v3, 0x4

    if-eq v1, v3, :cond_18

    const-string v3, "-d "

    const/4 v7, 0x5

    if-eq v1, v7, :cond_16

    packed-switch v1, :pswitch_data_0

    move/from16 v0, v18

    :goto_a
    const/16 v1, 0x63

    goto/16 :goto_e

    :pswitch_0
    move v1, v15

    move/from16 v0, v18

    :goto_b
    if-lt v1, v0, :cond_14

    :goto_c
    move v1, v11

    goto/16 :goto_e

    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :pswitch_1
    move/from16 v0, v18

    goto :goto_e

    :pswitch_2
    move/from16 v0, v18

    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_a

    :cond_15
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    :goto_d
    move v1, v2

    goto :goto_e

    :cond_16
    move/from16 v1, v18

    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    if-nez v16, :cond_17

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    move v0, v1

    goto :goto_d

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configure.duplicateDestinationPathEntry"

    invoke-virtual {v8, v1, v9}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    move/from16 v1, v18

    const/4 v7, 0x5

    :cond_19
    if-nez v16, :cond_1a

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v19, v1

    move v1, v0

    move/from16 v0, v19

    goto :goto_e

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configure.accessRuleAfterDestinationPath"

    invoke-virtual {v8, v1, v9}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    move/from16 v1, v18

    const/4 v7, 0x5

    move v0, v1

    move-object v14, v5

    goto :goto_c

    :goto_e
    if-ne v1, v4, :cond_0

    if-ne v0, v13, :cond_0

    add-int/lit8 v0, v15, 0x1

    move v1, v7

    goto/16 :goto_1

    :goto_f
    if-eq v1, v11, :cond_1c

    if-eq v1, v3, :cond_1c

    if-eq v1, v6, :cond_1d

    const/16 v0, 0x8

    if-eq v1, v0, :cond_1c

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "configure.incorrectClasspath"

    invoke-virtual {v8, v0, v9}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->addPendingErrors(Ljava/lang/String;)V

    goto :goto_10

    :cond_1c
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v14

    move-object v3, v10

    move-object/from16 v4, p4

    move-object/from16 v5, v16

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->addNewEntry(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_1d
    :goto_10
    return-void

    :cond_1e
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public relocalize()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->relocalize(Ljava/util/Locale;)V

    return-void
.end method

.method public setDestinationPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->destinationPath:Ljava/lang/String;

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->relocalize(Ljava/util/Locale;)V

    return-void
.end method

.method public setPaths(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v4, p9

    iget-wide v1, v7, Lorg/eclipse/jdt/internal/compiler/batch/Main;->complianceLevel:J

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-nez v1, :cond_0

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v2, "org.eclipse.jdt.core.compiler.compliance"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v7, Lorg/eclipse/jdt/internal/compiler/batch/Main;->complianceLevel:J

    :cond_0
    invoke-virtual {p0, v0, v9, v8}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->validateClasspathOptions(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)J

    move-result-wide v1

    iget-object v3, v7, Lorg/eclipse/jdt/internal/compiler/batch/Main;->releaseVersion:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-wide v5, v7, Lorg/eclipse/jdt/internal/compiler/batch/Main;->complianceLevel:J

    cmp-long v1, v5, v1

    if-gez v1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/batch/Main;->javaHomeCache:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lorg/eclipse/jdt/internal/compiler/batch/Main;->releaseVersion:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->getOlderSystemRelease(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;)Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    move-object v10, v0

    move-object/from16 v0, p4

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0, v4}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->handleBootclasspath(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-virtual {p0, v0, v4}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->handleClasspath(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    move-object/from16 v0, p5

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->handleModulepath(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->handleModuleSourcepath(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x4

    move-object v0, p0

    move-object v2, v14

    move-object/from16 v3, p2

    move-object/from16 v4, p9

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->processPathEntries(ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_2
    invoke-virtual {p0, v8}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->handleExtdirs(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v9}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->handleEndorseddirs(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v10, v2, v1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v10}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$ClasspathNormalizer;->normalize(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    iput-object v1, v7, Lorg/eclipse/jdt/internal/compiler/batch/Main;->checkedClasspaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/batch/Main;->checkedClasspaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->logClasspath([Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;)V

    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/batch/Main;->annotationPaths:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v1, "org.eclipse.jdt.core.compiler.annotation.nullanalysis"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "enabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/batch/Main;->checkedClasspaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    array-length v1, v0

    :goto_2
    if-lt v2, v1, :cond_3

    goto :goto_4

    :cond_3
    aget-object v3, v0, v2

    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;

    if-eqz v4, :cond_4

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;

    iget-object v4, v7, Lorg/eclipse/jdt/internal/compiler/batch/Main;->annotationPaths:Ljava/util/List;

    iput-object v4, v3, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->annotationPaths:Ljava/util/List;

    goto :goto_3

    :cond_4
    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;

    if-eqz v4, :cond_5

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;

    iget-object v4, v7, Lorg/eclipse/jdt/internal/compiler/batch/Main;->annotationPaths:Ljava/util/List;

    iput-object v4, v3, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->annotationPaths:Ljava/util/List;

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    return-void
.end method

.method public validateClasspathOptions(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->complianceLevel:J

    const-wide/32 v2, 0x340000

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    const-string v0, "configure.unsupportedOption"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "-bootclasspath"

    invoke-virtual {p0, v0, p2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "-extdirs"

    invoke-virtual {p0, v0, p2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "-endorseddirs"

    invoke-virtual {p0, v0, p2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->getJavaHome()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getJDKLevel(Ljava/io/File;)J

    move-result-wide p1

    const-wide/32 v0, 0x350000

    cmp-long p3, p1, v0

    if-gez p3, :cond_7

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->releaseVersion:Ljava/lang/String;

    if-nez p3, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "configure.unsupportedReleaseOption"

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_3
    return-wide p1
.end method

.method public validateOptions(Z)V
    .locals 22

    move-object/from16 v0, p0

    const-wide/32 v3, 0x330000

    const-string v5, "10"

    const-string v6, "9"

    const-string v7, "1.8"

    const-string v8, "1.7"

    const-string v9, "1.5"

    const-string v10, "org.eclipse.jdt.core.compiler.source"

    const-string v11, "org.eclipse.jdt.core.compiler.compliance"

    const-string v12, "1.6"

    const-string v13, "1.4"

    const-string v14, "org.eclipse.jdt.core.compiler.codegen.targetPlatform"

    if-eqz p1, :cond_32

    iget-object v15, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v15, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->releaseVersion:Ljava/lang/String;

    if-nez v1, :cond_31

    const-string v1, "1.3"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifySource:Z

    if-nez v2, :cond_0

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v2, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    if-nez v1, :cond_42

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    const-string v2, "1.1"

    invoke-interface {v1, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_1
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifySource:Z

    const-string v15, "1.2"

    if-eqz v2, :cond_3

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    if-nez v1, :cond_42

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_2
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    if-nez v1, :cond_42

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_3
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v2, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    if-nez v1, :cond_42

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_4
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifySource:Z

    if-eqz v2, :cond_7

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    if-nez v1, :cond_42

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_6
    :goto_0
    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    if-nez v1, :cond_42

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_7
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    if-nez v1, :cond_42

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_8
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifySource:Z

    if-eqz v2, :cond_c

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_1

    :cond_9
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    :cond_a
    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    if-nez v1, :cond_42

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_b
    :goto_1
    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    if-nez v1, :cond_42

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_c
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    if-nez v1, :cond_42

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_d
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifySource:Z

    if-eqz v2, :cond_12

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_3

    :cond_e
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_2

    :cond_f
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    if-nez v1, :cond_42

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_10
    :goto_2
    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    if-nez v1, :cond_42

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_11
    :goto_3
    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    if-nez v1, :cond_42

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_12
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    if-nez v1, :cond_42

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_13
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifySource:Z

    if-eqz v2, :cond_19

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_5

    :cond_14
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_4

    :cond_15
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    if-nez v1, :cond_42

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_16
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    if-nez v1, :cond_42

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_17
    :goto_4
    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    if-nez v1, :cond_42

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_18
    :goto_5
    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    if-nez v1, :cond_42

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_19
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    if-nez v1, :cond_42

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_1a
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifySource:Z

    if-eqz v2, :cond_21

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_7

    :cond_1b
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_6

    :cond_1c
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    if-nez v1, :cond_42

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_1d
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    if-nez v1, :cond_42

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_1e
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    if-nez v1, :cond_42

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v14, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_1f
    :goto_6
    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    if-nez v1, :cond_42

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_20
    :goto_7
    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    if-nez v1, :cond_42

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_21
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    if-nez v1, :cond_42

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v14, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_22
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifySource:Z

    if-eqz v2, :cond_2a

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_9

    :cond_23
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_8

    :cond_24
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    if-nez v1, :cond_42

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_25
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    if-nez v1, :cond_42

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_26
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    if-nez v1, :cond_42

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v14, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_27
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    if-nez v1, :cond_42

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_28
    :goto_8
    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    if-nez v1, :cond_42

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_29
    :goto_9
    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    if-nez v1, :cond_42

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_2a
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    if-nez v1, :cond_42

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_2b
    iget-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    if-nez v2, :cond_42

    iget-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifySource:Z

    if-eqz v2, :cond_30

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    goto :goto_b

    :cond_2c
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    goto :goto_a

    :cond_2d
    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v18

    cmp-long v1, v18, v3

    if-ltz v1, :cond_42

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_2e
    :goto_a
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_2f
    :goto_b
    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    if-nez v1, :cond_42

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_30
    invoke-static {v15}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/32 v16, 0x360000

    cmp-long v1, v1, v16

    if-lez v1, :cond_42

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v10, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_31
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "configure.unsupportedWithRelease"

    invoke-virtual {v0, v2, v15}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_32
    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifySource:Z

    if-eqz v1, :cond_42

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    if-nez p1, :cond_33

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    if-nez v1, :cond_42

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_34
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    if-nez p1, :cond_35

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_35
    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    if-nez v1, :cond_42

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_36
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    if-nez p1, :cond_37

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_37
    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    if-nez v1, :cond_42

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_38
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    if-nez p1, :cond_39

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_39
    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    if-nez v1, :cond_42

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_3a
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    if-nez p1, :cond_3b

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3b
    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    if-nez v1, :cond_42

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_3c
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    if-nez p1, :cond_3d

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    if-nez v1, :cond_42

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v14, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_3e
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    if-nez p1, :cond_3f

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3f
    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    if-nez v1, :cond_42

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_40
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v18

    const-wide/32 v15, 0x360000

    cmp-long v2, v18, v15

    if-lez v2, :cond_42

    if-nez p1, :cond_41

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v2, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_41
    iget-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    if-nez v2, :cond_42

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v2, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_42
    :goto_c
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->complianceLevel:J

    const-wide/16 v20, 0x0

    cmp-long v2, v3, v20

    if-nez v2, :cond_43

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->complianceLevel:J

    :cond_43
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "configure.incompatibleComplianceForSource"

    if-eqz v2, :cond_45

    move-object v2, v14

    iget-wide v14, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->complianceLevel:J

    const-wide/32 v16, 0x360000

    cmp-long v4, v14, v16

    if-ltz v4, :cond_44

    goto :goto_d

    :cond_44
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2, v5}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_45
    move-object v2, v14

    :goto_d
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    iget-wide v4, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->complianceLevel:J

    const-wide/32 v14, 0x350000

    cmp-long v4, v4, v14

    if-ltz v4, :cond_46

    goto :goto_e

    :cond_46
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2, v6}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_47
    :goto_e
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-wide/32 v5, 0x340000

    if-eqz v4, :cond_49

    iget-wide v14, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->complianceLevel:J

    cmp-long v4, v14, v5

    if-ltz v4, :cond_48

    goto :goto_f

    :cond_48
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_49
    :goto_f
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    iget-wide v14, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->complianceLevel:J

    const-wide/32 v16, 0x330000

    cmp-long v4, v14, v16

    if-ltz v4, :cond_4a

    goto :goto_10

    :cond_4a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2, v8}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4b
    :goto_10
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-wide/32 v14, 0x320000

    if-eqz v4, :cond_4d

    iget-wide v5, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->complianceLevel:J

    cmp-long v4, v5, v14

    if-ltz v4, :cond_4c

    goto :goto_11

    :cond_4c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2, v12}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4d
    :goto_11
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-wide/32 v5, 0x310000

    if-eqz v4, :cond_4f

    iget-wide v14, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->complianceLevel:J

    cmp-long v4, v14, v5

    if-ltz v4, :cond_4e

    goto :goto_12

    :cond_4e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2, v9}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4f
    :goto_12
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-wide/32 v14, 0x300000

    if-eqz v4, :cond_51

    iget-wide v5, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->complianceLevel:J

    cmp-long v4, v5, v14

    if-ltz v4, :cond_50

    goto :goto_13

    :cond_50
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2, v13}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_51
    :goto_13
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v4

    iget-wide v14, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->complianceLevel:J

    cmp-long v4, v14, v4

    if-ltz v4, :cond_66

    iget-boolean v3, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->enablePreview:Z

    if-eqz v3, :cond_53

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileConstants;->getLatestJDKLevel()J

    move-result-wide v3

    cmp-long v3, v14, v3

    if-nez v3, :cond_52

    goto :goto_14

    :cond_52
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "configure.unsupportedPreview"

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_53
    :goto_14
    iget-boolean v3, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifyTarget:Z

    if-eqz v3, :cond_65

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "jsr14"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/32 v5, 0x310000

    cmp-long v3, v3, v5

    if-ltz v3, :cond_54

    goto/16 :goto_1b

    :cond_54
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "configure.incompatibleTargetForGenericSource"

    invoke-virtual {v0, v4, v2, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_55
    const-string v3, "cldc1.1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    iget-boolean v3, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->didSpecifySource:Z

    if-eqz v3, :cond_57

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/32 v5, 0x300000

    cmp-long v3, v3, v5

    if-gez v3, :cond_56

    goto :goto_15

    :cond_56
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "configure.incompatibleSourceForCldcTarget"

    invoke-virtual {v0, v4, v2, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_57
    :goto_15
    iget-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->complianceLevel:J

    const-wide/32 v5, 0x310000

    cmp-long v3, v3, v5

    if-gez v3, :cond_58

    goto/16 :goto_1b

    :cond_58
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "configure.incompatibleComplianceForCldcTarget"

    invoke-virtual {v0, v4, v2, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_59
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/32 v5, 0x340000

    cmp-long v3, v3, v5

    const-string v4, "configure.incompatibleTargetForSource"

    if-ltz v3, :cond_5b

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v14

    cmp-long v3, v14, v5

    if-ltz v3, :cond_5a

    goto :goto_16

    :cond_5a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0, v4, v2, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5b
    :goto_16
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/32 v14, 0x330000

    cmp-long v3, v5, v14

    if-ltz v3, :cond_5d

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v3, v5, v14

    if-ltz v3, :cond_5c

    goto :goto_17

    :cond_5c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0, v4, v2, v8}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5d
    :goto_17
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/32 v7, 0x320000

    cmp-long v3, v5, v7

    if-ltz v3, :cond_5f

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v3, v5, v7

    if-ltz v3, :cond_5e

    goto :goto_18

    :cond_5e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0, v4, v2, v12}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5f
    :goto_18
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/32 v7, 0x310000

    cmp-long v3, v5, v7

    if-ltz v3, :cond_61

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v3, v5, v7

    if-ltz v3, :cond_60

    goto :goto_19

    :cond_60
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0, v4, v2, v9}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_61
    :goto_19
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/32 v7, 0x300000

    cmp-long v1, v5, v7

    if-ltz v1, :cond_63

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v1, v5, v7

    if-ltz v1, :cond_62

    goto :goto_1a

    :cond_62
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0, v4, v2, v13}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_63
    :goto_1a
    iget-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->complianceLevel:J

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-ltz v1, :cond_64

    goto :goto_1b

    :cond_64
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "configure.incompatibleComplianceForTarget"

    invoke-virtual {v0, v4, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_65
    :goto_1b
    return-void

    :cond_66
    new-instance v2, Ljava/lang/IllegalArgumentException;

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->options:Ljava/util/Map;

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
