.class public abstract Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;
.implements Lorg/eclipse/jdt/internal/core/builder/ICompilationUnitLocator;


# static fields
.field public static final JAVA_PROBLEM_MARKER_ATTRIBUTE_NAMES:[Ljava/lang/String;

.field public static final JAVA_TASK_MARKER_ATTRIBUTE_NAMES:[Ljava/lang/String;

.field public static MAX_AT_ONCE:I

.field public static final P_HIGH:Ljava/lang/Integer;

.field public static final P_LOW:Ljava/lang/Integer;

.field public static final P_NORMAL:Ljava/lang/Integer;

.field public static final S_ERROR:Ljava/lang/Integer;

.field public static final S_INFO:Ljava/lang/Integer;

.field public static final S_WARNING:Ljava/lang/Integer;


# instance fields
.field private compilationGroup:Lorg/eclipse/jdt/internal/core/CompilationGroup;

.field protected compiledAllAtOnce:Z

.field protected compiler:Lorg/eclipse/jdt/internal/compiler/Compiler;

.field protected filesWithAnnotations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/core/builder/SourceFile;",
            ">;"
        }
    .end annotation
.end field

.field private inCompiler:Z

.field protected javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

.field protected keepStoringProblemMarkers:Z

.field protected nameEnvironment:Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;

.field protected newState:Lorg/eclipse/jdt/internal/core/builder/State;

.field protected notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

.field protected problemSourceFiles:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lorg/eclipse/jdt/internal/core/builder/SourceFile;",
            ">;"
        }
    .end annotation
.end field

.field protected sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

.field protected workQueue:Lorg/eclipse/jdt/internal/core/builder/WorkQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "maxCompiledUnitsAtOnce"

    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->MAX_AT_ONCE:I

    const-string v7, "arguments"

    const-string v8, "categoryId"

    const-string v1, "message"

    const-string v2, "severity"

    const-string v3, "id"

    const-string v4, "charStart"

    const-string v5, "charEnd"

    const-string v6, "lineNumber"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->JAVA_PROBLEM_MARKER_ATTRIBUTE_NAMES:[Ljava/lang/String;

    const-string v7, "userEditable"

    const-string v8, "sourceId"

    const-string v1, "message"

    const-string v2, "priority"

    const-string v3, "id"

    const-string v4, "charStart"

    const-string v5, "charEnd"

    const-string v6, "lineNumber"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->JAVA_TASK_MARKER_ATTRIBUTE_NAMES:[Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->S_ERROR:Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->S_WARNING:Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->S_INFO:Ljava/lang/Integer;

    sput-object v0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->P_HIGH:Ljava/lang/Integer;

    sput-object v1, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->P_NORMAL:Ljava/lang/Integer;

    sput-object v2, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->P_LOW:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;ZLorg/eclipse/jdt/internal/core/builder/State;Lorg/eclipse/jdt/internal/core/CompilationGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->filesWithAnnotations:Ljava/util/Set;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->compilationGroup:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    sget-object v0, Lorg/eclipse/jdt/internal/core/CompilationGroup;->TEST:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    if-ne p4, v0, :cond_0

    iget-object p4, p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->testNameEnvironment:Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;

    goto :goto_0

    :cond_0
    iget-object p4, p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->nameEnvironment:Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;

    :goto_0
    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->nameEnvironment:Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;

    iget-object p4, p4, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    iget-object p4, p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    const/4 p4, 0x1

    iput-boolean p4, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->keepStoringProblemMarkers:Z

    if-eqz p2, :cond_4

    if-nez p3, :cond_1

    new-instance p3, Lorg/eclipse/jdt/internal/core/builder/State;

    invoke-direct {p3, p1}, Lorg/eclipse/jdt/internal/core/builder/State;-><init>(Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;)V

    :cond_1
    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->newState:Lorg/eclipse/jdt/internal/core/builder/State;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->newCompiler()Lorg/eclipse/jdt/internal/compiler/Compiler;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->compiler:Lorg/eclipse/jdt/internal/compiler/Compiler;

    new-instance p1, Lorg/eclipse/jdt/internal/core/builder/WorkQueue;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/core/builder/WorkQueue;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->workQueue:Lorg/eclipse/jdt/internal/core/builder/WorkQueue;

    new-instance p1, Ljava/util/LinkedHashSet;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->problemSourceFiles:Ljava/util/LinkedHashSet;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->participants:[Lorg/eclipse/jdt/core/compiler/CompilationParticipant;

    if-eqz p1, :cond_4

    array-length p1, p1

    const/4 p2, 0x0

    :goto_1
    if-lt p2, p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    iget-object p3, p3, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->participants:[Lorg/eclipse/jdt/core/compiler/CompilationParticipant;

    aget-object p3, p3, p2

    invoke-virtual {p3}, Lorg/eclipse/jdt/core/compiler/CompilationParticipant;->isAnnotationProcessor()Z

    move-result p3

    if-eqz p3, :cond_3

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p4}, Ljava/util/HashSet;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->filesWithAnnotations:Ljava/util/Set;

    goto :goto_2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public acceptResult(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v3, p1

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getCompilationUnit()Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    move-result-object v0

    instance-of v1, v0, Lorg/eclipse/jdt/internal/core/builder/SourceFile;

    if-nez v1, :cond_0

    return-void

    :cond_0
    move-object v8, v0

    check-cast v8, Lorg/eclipse/jdt/internal/core/builder/SourceFile;

    iget-object v0, v7, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->workQueue:Lorg/eclipse/jdt/internal/core/builder/WorkQueue;

    invoke-virtual {v0, v8}, Lorg/eclipse/jdt/internal/core/builder/WorkQueue;->isCompiled(Lorg/eclipse/jdt/internal/core/builder/SourceFile;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v7, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->workQueue:Lorg/eclipse/jdt/internal/core/builder/WorkQueue;

    invoke-virtual {v0, v8}, Lorg/eclipse/jdt/internal/core/builder/WorkQueue;->finished(Lorg/eclipse/jdt/internal/core/builder/SourceFile;)V

    :try_start_0
    invoke-virtual {v7, v8, v3}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->updateProblemsFor(Lorg/eclipse/jdt/internal/core/builder/SourceFile;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    invoke-virtual {v7, v8, v3}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->updateTasksFor(Lorg/eclipse/jdt/internal/core/builder/SourceFile;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_2

    iget-boolean v0, v3, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->hasInconsistentToplevelHierarchies:Z

    if-eqz v0, :cond_1

    iget-object v0, v7, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->problemSourceFiles:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v8}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->typeLocator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getClassFiles()[Lorg/eclipse/jdt/internal/compiler/ClassFile;

    move-result-object v1

    array-length v4, v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    if-lt v9, v4, :cond_3

    iget-boolean v0, v3, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->hasAnnotations:Z

    if-eqz v0, :cond_2

    iget-object v0, v7, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->filesWithAnnotations:Ljava/util/Set;

    if-eqz v0, :cond_2

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, v7, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->compiler:Lorg/eclipse/jdt/internal/compiler/Compiler;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->releaseClassFiles([Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->getMainTypeName()[C

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->finishedWith(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/CompilationResult;[CLjava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v0, v7, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    invoke-virtual {v0, v8}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->compiled(Lorg/eclipse/jdt/internal/core/builder/SourceFile;)V

    goto/16 :goto_4

    :cond_3
    aget-object v0, v1, v9

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->getCompoundName()[[C

    move-result-object v13

    array-length v14, v13

    add-int/lit8 v14, v14, -0x1

    aget-object v14, v13, v14

    iget-boolean v15, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->isNestedType:Z

    const-string v6, "error"

    if-eqz v15, :cond_4

    new-instance v13, Ljava/lang/String;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->outerMostEnclosingClassFile()Lorg/eclipse/jdt/internal/compiler/ClassFile;

    move-result-object v14

    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->fileName()[C

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>([C)V

    iget-object v14, v7, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->newState:Lorg/eclipse/jdt/internal/core/builder/State;

    invoke-virtual {v14, v13, v2}, Lorg/eclipse/jdt/internal/core/builder/State;->isDuplicateLocator(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    move-object/from16 v16, v1

    move/from16 v17, v4

    if-eqz v13, :cond_a

    goto :goto_2

    :cond_4
    move-object/from16 v16, v1

    new-instance v1, Ljava/lang/String;

    move/from16 v17, v4

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->fileName()[C

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([C)V

    iget-object v4, v7, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->newState:Lorg/eclipse/jdt/internal/core/builder/State;

    invoke-virtual {v4, v1, v2}, Lorg/eclipse/jdt/internal/core/builder/State;->isDuplicateLocator(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-nez v10, :cond_5

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x2f

    if-nez v11, :cond_6

    :try_start_1
    iget-object v12, v8, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->initialTypeName:Ljava/lang/String;

    iget-object v4, v7, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->javaProject:Lorg/eclipse/jdt/internal/core/JavaProject;

    const/16 v13, 0x2e

    invoke-virtual {v12, v0, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lorg/eclipse/jdt/internal/core/JavaProject;->findType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object v11
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_6
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v0, v11

    goto :goto_1

    :cond_7
    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    if-nez v11, :cond_8

    const/4 v0, 0x0

    goto :goto_1

    :cond_8
    invoke-interface {v11}, Lorg/eclipse/jdt/core/IMember;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jdt/core/ICompilationUnit;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    :goto_1
    iget-object v1, v8, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->resource:Lorg/eclipse/core/resources/IFile;

    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->build_duplicateClassFile:Ljava/lang/String;

    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>([C)V

    invoke-static {v4, v13}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v1, v0, v4, v6}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->createProblemFor(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/core/IMember;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/4 v4, 0x0

    goto :goto_3

    :cond_9
    iget-object v4, v7, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->newState:Lorg/eclipse/jdt/internal/core/builder/State;

    invoke-virtual {v4, v1, v2}, Lorg/eclipse/jdt/internal/core/builder/State;->recordLocatorForType(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v4, v3, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->checkSecondaryTypes:Z

    if-eqz v4, :cond_a

    iget-object v4, v8, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->initialTypeName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v7, v0}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->acceptSecondaryType(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    :cond_a
    xor-int/lit8 v1, v15, 0x1

    :try_start_2
    invoke-virtual {v7, v0, v8, v1}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->writeClassFile(Lorg/eclipse/jdt/internal/compiler/ClassFile;Lorg/eclipse/jdt/internal/core/builder/SourceFile;Z)[C

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "JavaBuilder handling CoreException"

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/eclipse/core/runtime/CoreException;->getStatus()Lorg/eclipse/core/runtime/IStatus;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/runtime/IStatus;->getCode()I

    move-result v1

    const/16 v4, 0x113

    if-ne v1, v4, :cond_b

    iget-object v1, v8, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->resource:Lorg/eclipse/core/resources/IFile;

    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->build_classFileCollision:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/eclipse/core/runtime/CoreException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v7, v1, v4, v0, v6}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->createProblemFor(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/core/IMember;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    const/4 v4, 0x0

    iget-object v0, v8, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->resource:Lorg/eclipse/core/resources/IFile;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->build_inconsistentClassFile:Ljava/lang/String;

    invoke-virtual {v7, v0, v4, v1, v6}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->createProblemFor(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/core/IMember;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, v16

    move/from16 v4, v17

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v7, v0}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->internalException(Lorg/eclipse/core/runtime/CoreException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_c
    :goto_4
    return-void
.end method

.method public acceptSecondaryType(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V
    .locals 0

    return-void
.end method

.method public addAllSourceFiles(Ljava/util/LinkedHashSet;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet<",
            "Lorg/eclipse/jdt/internal/core/builder/SourceFile;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    move-object/from16 v10, p0

    iget-object v0, v10, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    array-length v11, v0

    const/4 v12, 0x0

    move v13, v12

    :goto_0
    if-lt v13, v11, :cond_0

    return-void

    :cond_0
    iget-object v0, v10, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    aget-object v4, v0, v13

    iget-object v2, v4, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->exclusionPatterns:[[C

    iget-object v3, v4, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->inclusionPatterns:[[C

    iget-object v0, v4, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->sourceFolder:Lorg/eclipse/core/resources/IContainer;

    iget-object v1, v10, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    iget-object v0, v4, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->sourceFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IContainer;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v8

    iget-object v9, v4, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->binaryFolder:Lorg/eclipse/core/resources/IContainer;

    iget-object v0, v4, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->sourceFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    iget-object v14, v4, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->sourceFolder:Lorg/eclipse/core/resources/IContainer;

    new-instance v15, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder$1;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v9}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder$1;-><init>(Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;[[C[[CLorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;Ljava/util/LinkedHashSet;ZZILorg/eclipse/core/resources/IContainer;)V

    invoke-interface {v14, v15, v12}, Lorg/eclipse/core/resources/IContainer;->accept(Lorg/eclipse/core/resources/IResourceProxyVisitor;I)V

    iget-object v0, v10, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->checkCancel()V

    add-int/lit8 v13, v13, 0x1

    goto :goto_0
.end method

.method public cleanUp()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->nameEnvironment:Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->cleanup()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->nameEnvironment:Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->compiler:Lorg/eclipse/jdt/internal/compiler/Compiler;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->workQueue:Lorg/eclipse/jdt/internal/core/builder/WorkQueue;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->problemSourceFiles:Ljava/util/LinkedHashSet;

    return-void
.end method

.method public compile([Lorg/eclipse/jdt/internal/core/builder/SourceFile;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->filesWithAnnotations:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->filesWithAnnotations:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->participants:[Lorg/eclipse/jdt/core/compiler/CompilationParticipant;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->notifyParticipants([Lorg/eclipse/jdt/internal/core/builder/SourceFile;)[Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    .line 4
    array-length v2, v0

    array-length v3, p1

    if-le v2, v3, :cond_3

    .line 5
    array-length p1, v0

    new-array v2, p1, [Lorg/eclipse/jdt/internal/core/builder/SourceFile;

    .line 6
    array-length p1, v0

    :goto_1
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_2

    move-object p1, v2

    goto :goto_2

    .line 7
    :cond_2
    aget-object v3, v0, p1

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;->sourceFile:Lorg/eclipse/jdt/internal/core/builder/SourceFile;

    aput-object v3, v2, p1

    goto :goto_1

    .line 8
    :cond_3
    :goto_2
    array-length v2, p1

    .line 9
    sget v3, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->MAX_AT_ONCE:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    if-le v2, v3, :cond_4

    move v3, v5

    goto :goto_3

    :cond_4
    move v3, v4

    :goto_3
    iput-boolean v3, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->compiledAllAtOnce:Z

    if-eqz v3, :cond_7

    .line 10
    sget-boolean v3, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v3, :cond_6

    :goto_4
    if-lt v5, v2, :cond_5

    goto :goto_5

    .line 11
    :cond_5
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "About to compile "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, p1, v5

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->typeLocator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 12
    :cond_6
    :goto_5
    invoke-virtual {p0, p1, v1, v4}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->compile([Lorg/eclipse/jdt/internal/core/builder/SourceFile;[Lorg/eclipse/jdt/internal/core/builder/SourceFile;Z)V

    goto :goto_7

    .line 13
    :cond_7
    new-array v3, v2, [Lorg/eclipse/jdt/internal/core/builder/SourceFile;

    .line 14
    invoke-static {p1, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    sget p1, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->MAX_AT_ONCE:I

    if-ge v2, p1, :cond_8

    move p1, v2

    .line 16
    :cond_8
    new-array v6, p1, [Lorg/eclipse/jdt/internal/core/builder/SourceFile;

    move v7, v5

    :goto_6
    if-lt v7, v2, :cond_c

    :goto_7
    if-eqz v0, :cond_b

    .line 17
    array-length p1, v0

    :cond_9
    :goto_8
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_a

    .line 18
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->processAnnotations([Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;)V

    goto :goto_9

    .line 19
    :cond_a
    aget-object v1, v0, p1

    if-eqz v1, :cond_9

    .line 20
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->recordParticipantResult(Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;)V

    goto :goto_8

    :cond_b
    :goto_9
    return-void

    :cond_c
    move v8, v5

    :goto_a
    if-ge v7, v2, :cond_11

    if-lt v8, p1, :cond_d

    goto :goto_b

    .line 21
    :cond_d
    aget-object v9, v3, v7

    if-eqz v9, :cond_10

    if-nez v4, :cond_e

    .line 22
    iget-object v10, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->workQueue:Lorg/eclipse/jdt/internal/core/builder/WorkQueue;

    invoke-virtual {v10, v9}, Lorg/eclipse/jdt/internal/core/builder/WorkQueue;->isWaiting(Lorg/eclipse/jdt/internal/core/builder/SourceFile;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 23
    :cond_e
    sget-boolean v10, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v10, :cond_f

    .line 24
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "About to compile #"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->typeLocator()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_f
    add-int/lit8 v10, v8, 0x1

    .line 25
    aput-object v9, v6, v8

    move v8, v10

    :cond_10
    add-int/lit8 v9, v7, 0x1

    .line 26
    aput-object v1, v3, v7

    move v7, v9

    goto :goto_a

    :cond_11
    :goto_b
    if-ge v8, p1, :cond_12

    .line 27
    new-array v9, v8, [Lorg/eclipse/jdt/internal/core/builder/SourceFile;

    invoke-static {v6, v5, v9, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v9

    :cond_12
    if-nez v4, :cond_15

    move v8, v7

    :goto_c
    if-lt v8, v2, :cond_13

    goto :goto_d

    .line 28
    :cond_13
    aget-object v9, v3, v8

    if-eqz v9, :cond_14

    iget-object v10, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->workQueue:Lorg/eclipse/jdt/internal/core/builder/WorkQueue;

    invoke-virtual {v10, v9}, Lorg/eclipse/jdt/internal/core/builder/WorkQueue;->isCompiled(Lorg/eclipse/jdt/internal/core/builder/SourceFile;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 29
    aput-object v1, v3, v8

    :cond_14
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    .line 30
    :cond_15
    :goto_d
    invoke-virtual {p0, v6, v3, v4}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->compile([Lorg/eclipse/jdt/internal/core/builder/SourceFile;[Lorg/eclipse/jdt/internal/core/builder/SourceFile;Z)V

    move v4, v5

    goto :goto_6
.end method

.method public compile([Lorg/eclipse/jdt/internal/core/builder/SourceFile;[Lorg/eclipse/jdt/internal/core/builder/SourceFile;Z)V
    .locals 6

    .line 31
    array-length p3, p1

    if-nez p3, :cond_0

    return-void

    .line 32
    :cond_0
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-virtual {p3, v1}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->aboutToCompile(Lorg/eclipse/jdt/internal/core/builder/SourceFile;)V

    .line 33
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->problemSourceFiles:Ljava/util/LinkedHashSet;

    invoke-virtual {p3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_4

    .line 34
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->problemSourceFiles:Ljava/util/LinkedHashSet;

    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result p3

    if-nez p2, :cond_1

    move v1, v0

    goto :goto_0

    .line 35
    :cond_1
    array-length v1, p2

    :goto_0
    if-nez v1, :cond_2

    .line 36
    new-array p2, p3, [Lorg/eclipse/jdt/internal/core/builder/SourceFile;

    move-object v2, p2

    goto :goto_1

    :cond_2
    add-int v2, v1, p3

    .line 37
    new-array v2, v2, [Lorg/eclipse/jdt/internal/core/builder/SourceFile;

    invoke-static {p2, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    :goto_1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->problemSourceFiles:Ljava/util/LinkedHashSet;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move p2, v0

    :goto_2
    if-lt p2, p3, :cond_3

    move-object p2, v2

    goto :goto_3

    :cond_3
    add-int v4, v1, p2

    .line 39
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/internal/core/builder/SourceFile;

    aput-object v5, v2, v4

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 40
    :cond_4
    :goto_3
    array-length p3, p1

    new-array p3, p3, [Ljava/lang/String;

    .line 41
    array-length v1, p1

    move v2, v0

    :goto_4
    if-lt v2, v1, :cond_5

    .line 42
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->nameEnvironment:Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;

    invoke-virtual {v1, p3, p2}, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->setNames([Ljava/lang/String;[Lorg/eclipse/jdt/internal/core/builder/SourceFile;)V

    .line 43
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->checkCancel()V

    const/4 p2, 0x1

    .line 44
    :try_start_0
    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->inCompiler:Z

    .line 45
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->compiler:Lorg/eclipse/jdt/internal/compiler/Compiler;

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/Compiler;->compile([Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :catch_0
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->inCompiler:Z

    goto :goto_5

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->inCompiler:Z

    .line 47
    throw p1

    .line 48
    :goto_5
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->checkCancel()V

    return-void

    .line 49
    :cond_5
    aget-object v3, p1, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->getModuleName()[C

    move-result-object v3

    if-nez v3, :cond_6

    .line 50
    aget-object v3, p1, v2

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->initialTypeName:Ljava/lang/String;

    goto :goto_6

    .line 51
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x3c

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v3, p1, v2

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->initialTypeName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 52
    :goto_6
    aput-object v3, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method public copyResource(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/core/resources/IResource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-interface {p2}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    const/16 v1, 0x401

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p1, v0, v1, v3}, Lorg/eclipse/core/resources/IResource;->copy(Lorg/eclipse/core/runtime/IPath;ILorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->setReadOnly(Lorg/eclipse/core/resources/IResource;Z)V

    return-void

    :catch_0
    move-exception p2

    invoke-interface {p1, v2, v3}, Lorg/eclipse/core/resources/IResource;->refreshLocal(ILorg/eclipse/core/runtime/IProgressMonitor;)V

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResource;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    throw p2
.end method

.method public createFolder(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/resources/IContainer;)Lorg/eclipse/core/resources/IContainer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    invoke-interface {p2, p1}, Lorg/eclipse/core/resources/IContainer;->getFolder(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFolder;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IFolder;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lorg/eclipse/core/runtime/IPath;->removeLastSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->createFolder(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/resources/IContainer;)Lorg/eclipse/core/resources/IContainer;

    const/16 p1, 0x401

    const/4 p2, 0x0

    invoke-interface {v0, p1, v1, p2}, Lorg/eclipse/core/resources/IFolder;->create(IZLorg/eclipse/core/runtime/IProgressMonitor;)V

    :cond_1
    return-object v0
.end method

.method public createProblemFor(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/core/IMember;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    :try_start_0
    const-string v0, "org.eclipse.jdt.core.problem"

    invoke-interface {p1, v0}, Lorg/eclipse/core/resources/IResource;->createMarker(Ljava/lang/String;)Lorg/eclipse/core/resources/IMarker;

    move-result-object p1

    const-string v0, "warning"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    move p4, v0

    goto :goto_0

    :cond_0
    const/4 p4, 0x2

    :goto_0
    if-eqz p2, :cond_3

    :try_start_1
    invoke-interface {p2}, Lorg/eclipse/jdt/core/ISourceReference;->getNameRange()Lorg/eclipse/jdt/core/ISourceRange;

    move-result-object p2
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/JavaModelException;->getJavaModelStatus()Lorg/eclipse/jdt/core/IJavaModelStatus;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaModelStatus;->getCode()I

    move-result v2

    const/16 v3, 0x3c9

    if-ne v2, v3, :cond_2

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->PACKAGE_INFO_NAME:[C

    invoke-static {p2, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    throw v1

    :cond_2
    throw v1

    :cond_3
    :goto_1
    const/4 p2, 0x0

    :goto_2
    if-nez p2, :cond_4

    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    invoke-interface {p2}, Lorg/eclipse/jdt/core/ISourceRange;->getOffset()I

    move-result v1

    :goto_3
    if-nez p2, :cond_5

    goto :goto_4

    :cond_5
    invoke-interface {p2}, Lorg/eclipse/jdt/core/ISourceRange;->getLength()I

    move-result p2

    add-int v0, v1, p2

    :goto_4
    const-string p2, "message"

    const-string v2, "severity"

    const-string v3, "charStart"

    const-string v4, "charEnd"

    const-string v5, "sourceId"

    filled-new-array {p2, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "JDT"

    filled-new-array {p3, p4, v1, v0, v2}, [Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lorg/eclipse/core/resources/IMarker;->setAttributes([Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :goto_5
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->internalException(Lorg/eclipse/core/runtime/CoreException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public deleteGeneratedFiles([Lorg/eclipse/core/resources/IFile;)V
    .locals 0

    return-void
.end method

.method public findSourceFile(Lorg/eclipse/core/resources/IFile;Z)Lorg/eclipse/jdt/internal/core/builder/SourceFile;
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lorg/eclipse/core/resources/IFile;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    array-length p2, p2

    if-lez p2, :cond_4

    invoke-interface {p1}, Lorg/eclipse/core/resources/IFile;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    array-length v1, v1

    const/4 v2, 0x0

    move-object v3, v0

    :goto_0
    if-lt v2, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    aget-object v4, v4, v2

    iget-object v4, v4, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->sourceFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v4}, Lorg/eclipse/core/resources/IContainer;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-interface {v4, p2}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    aget-object v3, v3, v2

    iget-object v4, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->exclusionPatterns:[[C

    if-nez v4, :cond_2

    iget-object v5, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->inclusionPatterns:[[C

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    iget-object v5, v3, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->inclusionPatterns:[[C

    invoke-static {p1, v5, v4}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/core/resources/IResource;[[C[[C)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move-object v3, v0

    :goto_1
    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Lorg/eclipse/jdt/internal/core/builder/SourceFile;

    invoke-direct {v0, p1, v3}, Lorg/eclipse/jdt/internal/core/builder/SourceFile;-><init>(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;)V

    :goto_2
    return-object v0
.end method

.method public finishedWith(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/CompilationResult;[CLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 10

    if-nez p5, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->newState:Lorg/eclipse/jdt/internal/core/builder/State;

    iget-object v2, p2, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->qualifiedReferences:[[[C

    iget-object v3, p2, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->simpleNameReferences:[[C

    iget-object v4, p2, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->rootReferences:[[C

    move-object v1, p1

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/builder/State;->record(Ljava/lang/String;[[[C[[C[[C[CLjava/util/ArrayList;)V

    return-void

    :cond_0
    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->simpleNameReferences:[[C

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move-object v6, v0

    move v0, v2

    :goto_0
    if-lt v0, v1, :cond_1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->newState:Lorg/eclipse/jdt/internal/core/builder/State;

    iget-object v5, p2, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->qualifiedReferences:[[[C

    iget-object v7, p2, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->rootReferences:[[C

    move-object v4, p1

    move-object v8, p3

    move-object v9, p4

    invoke-virtual/range {v3 .. v9}, Lorg/eclipse/jdt/internal/core/builder/State;->record(Ljava/lang/String;[[[C[[C[[C[CLjava/util/ArrayList;)V

    return-void

    :cond_1
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[C

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    array-length v4, v6

    move v5, v2

    :goto_1
    if-lt v5, v4, :cond_2

    add-int/lit8 v5, v4, 0x1

    new-array v5, v5, [[C

    invoke-static {v6, v2, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v3, v5, v4

    move-object v6, v5

    goto :goto_2

    :cond_2
    aget-object v7, v6, v5

    invoke-static {v7, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v7

    if-eqz v7, :cond_3

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public fromIFile(Lorg/eclipse/core/resources/IFile;)Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->findSourceFile(Lorg/eclipse/core/resources/IFile;Z)Lorg/eclipse/jdt/internal/core/builder/SourceFile;

    move-result-object p1

    return-object p1
.end method

.method public initializeAnnotationProcessorManager(Lorg/eclipse/jdt/internal/compiler/Compiler;)V
    .locals 4

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->createAnnotationProcessorManager()Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->javaProject:Lorg/eclipse/jdt/internal/core/JavaProject;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->compilationGroup:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    sget-object v3, Lorg/eclipse/jdt/internal/core/CompilationGroup;->TEST:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, p1, p0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;->configureFromPlatform(Lorg/eclipse/jdt/internal/compiler/Compiler;Ljava/lang/Object;Ljava/lang/Object;Z)V

    new-instance v1, Ljava/io/PrintWriter;

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;->setErr(Ljava/io/PrintWriter;)V

    new-instance v1, Ljava/io/PrintWriter;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;->setOut(Ljava/io/PrintWriter;)V

    :cond_1
    iput-object v0, p1, Lorg/eclipse/jdt/internal/compiler/Compiler;->annotationProcessorManager:Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;

    return-void
.end method

.method public internalException(Lorg/eclipse/core/runtime/CoreException;)Ljava/lang/RuntimeException;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/core/builder/ImageBuilderInternalException;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/core/builder/ImageBuilderInternalException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->inCompiler:Z

    if-eqz p1, :cond_0

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;

    const/4 v1, 0x1

    invoke-direct {p1, v1, v0}, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;-><init>(ZLjava/lang/RuntimeException;)V

    return-object p1

    :cond_0
    return-object v0
.end method

.method public isExcludedFromProject(Lorg/eclipse/core/runtime/IPath;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    array-length v0, v0

    :goto_0
    if-lt v2, v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->javaProject:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->binaryFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v1}, Lorg/eclipse/core/resources/IContainer;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    return v3

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->sourceFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v1}, Lorg/eclipse/core/resources/IContainer;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public newCompiler()Lorg/eclipse/jdt/internal/compiler/Compiler;
    .locals 10

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->javaProject:Lorg/eclipse/jdt/internal/core/JavaProject;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOptions(Z)Ljava/util/Map;

    move-result-object v0

    const-string v2, "org.eclipse.jdt.core.compiler.problem.invalidJavadoc"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "ignore"

    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    const-string v2, "org.eclipse.jdt.core.compiler.problem.missingJavadocTags"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    const-string v2, "org.eclipse.jdt.core.compiler.problem.missingJavadocComments"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    const-string v2, "org.eclipse.jdt.core.compiler.problem.unusedImport"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const-string v2, "org.eclipse.jdt.core.compiler.doc.comment.support"

    const-string v3, "disabled"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    new-instance v7, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    invoke-direct {v7, v0}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;-><init>(Ljava/util/Map;)V

    iput-boolean v1, v7, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->performMethodsFullRecovery:Z

    iput-boolean v1, v7, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->performStatementsRecovery:Z

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/Compiler;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->nameEnvironment:Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/DefaultErrorHandlingPolicies;->proceedWithAllProblems()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    move-result-object v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/builder/ProblemFactory;->getProblemFactory(Ljava/util/Locale;)Lorg/eclipse/jdt/internal/core/builder/ProblemFactory;

    move-result-object v9

    move-object v4, v0

    move-object v8, p0

    invoke-direct/range {v4 .. v9}, Lorg/eclipse/jdt/internal/compiler/Compiler;-><init>(Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/Compiler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    const-string v3, "jdt.compiler.useSingleThread"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v1

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, v0, Lorg/eclipse/jdt/internal/compiler/Compiler;->useSingleThread:Z

    iput-boolean v1, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->produceReferenceInfo:Z

    iget-wide v3, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v5, 0x320000

    cmp-long v1, v3, v5

    if-ltz v1, :cond_6

    iget-boolean v1, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->processAnnotations:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->initializeAnnotationProcessorManager(Lorg/eclipse/jdt/internal/compiler/Compiler;)V

    :cond_6
    return-object v0
.end method

.method public notifyParticipants([Lorg/eclipse/jdt/internal/core/builder/SourceFile;)[Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;
    .locals 14

    array-length v0, p1

    new-array v1, v0, [Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;

    array-length v2, p1

    :goto_0
    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gez v2, :cond_e

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->participants:[Lorg/eclipse/jdt/core/compiler/CompilationParticipant;

    array-length v5, v2

    move v2, v4

    :goto_1
    if-lt v2, v5, :cond_d

    const/4 v2, 0x0

    move v6, v0

    move-object v5, v2

    move v7, v4

    :cond_0
    :goto_2
    add-int/lit8 v6, v6, -0x1

    if-gez v6, :cond_2

    if-lez v7, :cond_1

    add-int p1, v0, v7

    new-array p1, p1, [Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;

    invoke-static {v1, v4, p1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2, v4, p1, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, p1

    :cond_1
    return-object v1

    :cond_2
    aget-object v8, v1, v6

    if-nez v8, :cond_3

    goto :goto_2

    :cond_3
    iget-object v9, v8, Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;->deletedFiles:[Lorg/eclipse/core/resources/IFile;

    if-eqz v9, :cond_4

    invoke-virtual {p0, v9}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->deleteGeneratedFiles([Lorg/eclipse/core/resources/IFile;)V

    :cond_4
    iget-object v8, v8, Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;->addedFiles:[Lorg/eclipse/core/resources/IFile;

    if-eqz v8, :cond_0

    array-length v9, v8

    :cond_5
    :goto_3
    add-int/lit8 v9, v9, -0x1

    if-gez v9, :cond_6

    goto :goto_2

    :cond_6
    aget-object v10, v8, v9

    invoke-virtual {p0, v10, v3}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->findSourceFile(Lorg/eclipse/core/resources/IFile;Z)Lorg/eclipse/jdt/internal/core/builder/SourceFile;

    move-result-object v10

    if-nez v10, :cond_7

    goto :goto_3

    :cond_7
    if-nez v5, :cond_9

    new-instance v11, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    array-length v5, p1

    add-int/lit8 v5, v5, 0x3

    invoke-direct {v11, v5}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;-><init>(I)V

    array-length v5, p1

    :goto_4
    add-int/lit8 v5, v5, -0x1

    if-gez v5, :cond_8

    move-object v5, v11

    goto :goto_5

    :cond_8
    aget-object v12, p1, v5

    invoke-virtual {v11, v12}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->add(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_9
    :goto_5
    invoke-virtual {v5, v10}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->addIfNotIncluded(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v10, :cond_5

    new-instance v11, Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;

    iget-object v12, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->compilationGroup:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    sget-object v13, Lorg/eclipse/jdt/internal/core/CompilationGroup;->TEST:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    if-ne v12, v13, :cond_a

    move v12, v3

    goto :goto_6

    :cond_a
    move v12, v4

    :goto_6
    invoke-direct {v11, v10, v12}, Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;-><init>(Lorg/eclipse/jdt/internal/core/builder/SourceFile;Z)V

    if-nez v2, :cond_b

    array-length v2, v8

    new-array v2, v2, [Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;

    goto :goto_7

    :cond_b
    array-length v12, v2

    if-ne v7, v12, :cond_c

    array-length v13, v8

    add-int/2addr v13, v12

    new-array v13, v13, [Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;

    invoke-static {v2, v4, v13, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v13

    :cond_c
    :goto_7
    add-int/lit8 v12, v7, 0x1

    aput-object v11, v2, v7

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->workQueue:Lorg/eclipse/jdt/internal/core/builder/WorkQueue;

    invoke-virtual {v7, v10}, Lorg/eclipse/jdt/internal/core/builder/WorkQueue;->add(Lorg/eclipse/jdt/internal/core/builder/SourceFile;)V

    move v7, v12

    goto :goto_3

    :cond_d
    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->participants:[Lorg/eclipse/jdt/core/compiler/CompilationParticipant;

    aget-object v6, v6, v2

    instance-of v7, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;

    invoke-virtual {v6, v1, v7}, Lorg/eclipse/jdt/core/compiler/CompilationParticipant;->buildStarting([Lorg/eclipse/jdt/core/compiler/BuildContext;Z)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_e
    new-instance v5, Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;

    aget-object v6, p1, v2

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->compilationGroup:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    sget-object v8, Lorg/eclipse/jdt/internal/core/CompilationGroup;->TEST:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    if-ne v7, v8, :cond_f

    goto :goto_8

    :cond_f
    move v3, v4

    :goto_8
    invoke-direct {v5, v6, v3}, Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;-><init>(Lorg/eclipse/jdt/internal/core/builder/SourceFile;Z)V

    aput-object v5, v1, v2

    goto/16 :goto_0
.end method

.method public abstract processAnnotationResults([Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;)V
.end method

.method public processAnnotations([Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;)V
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->participants:[Lorg/eclipse/jdt/core/compiler/CompilationParticipant;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-nez v2, :cond_1

    if-lt v3, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->participants:[Lorg/eclipse/jdt/core/compiler/CompilationParticipant;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/compiler/CompilationParticipant;->isAnnotationProcessor()Z

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v2, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->filesWithAnnotations:Ljava/util/Set;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    array-length v3, p1

    :goto_3
    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->participants:[Lorg/eclipse/jdt/core/compiler/CompilationParticipant;

    array-length v4, v0

    :goto_4
    if-lt v1, v4, :cond_4

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->processAnnotationResults([Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;)V

    return-void

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->participants:[Lorg/eclipse/jdt/core/compiler/CompilationParticipant;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/compiler/CompilationParticipant;->isAnnotationProcessor()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->participants:[Lorg/eclipse/jdt/core/compiler/CompilationParticipant;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/compiler/CompilationParticipant;->processAnnotations([Lorg/eclipse/jdt/core/compiler/BuildContext;)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    aget-object v4, p1, v3

    if-eqz v0, :cond_7

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->filesWithAnnotations:Ljava/util/Set;

    iget-object v6, v4, Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;->sourceFile:Lorg/eclipse/jdt/internal/core/builder/SourceFile;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v2

    goto :goto_5

    :cond_7
    move v5, v1

    :goto_5
    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;->reset(Z)V

    goto :goto_3
.end method

.method public recordParticipantResult(Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;)V
    .locals 2

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->updateProblemCounts([Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    :try_start_0
    iget-object v1, p1, Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;->sourceFile:Lorg/eclipse/jdt/internal/core/builder/SourceFile;

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->storeProblemsFor(Lorg/eclipse/jdt/internal/core/builder/SourceFile;[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "JavaBuilder logging CompilationParticipant\'s CoreException to help debugging"

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;->dependencies:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->newState:Lorg/eclipse/jdt/internal/core/builder/State;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/builder/State;->references:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;->sourceFile:Lorg/eclipse/jdt/internal/core/builder/SourceFile;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->typeLocator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->addDependencies([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public storeProblemsFor(Lorg/eclipse/jdt/internal/core/builder/SourceFile;[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    if-eqz v2, :cond_1b

    if-eqz v3, :cond_1b

    array-length v0, v3

    if-nez v0, :cond_0

    goto/16 :goto_11

    :cond_0
    iget-boolean v0, v1, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->keepStoringProblemMarkers:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->compilationParticipants:Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;->managedMarkerTypes()Ljava/util/HashSet;

    move-result-object v4

    array-length v5, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-lt v7, v5, :cond_2

    return-void

    :cond_2
    aget-object v8, v3, v7

    invoke-interface {v8}, Lorg/eclipse/jdt/core/compiler/IProblem;->getID()I

    move-result v9

    iget-object v10, v2, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->resource:Lorg/eclipse/core/resources/IFile;

    const v0, 0x1000144

    if-ne v9, v0, :cond_3

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->build_incompleteClassPath:Ljava/lang/String;

    invoke-interface {v8}, Lorg/eclipse/jdt/core/compiler/IProblem;->getArguments()[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v6

    invoke-static {v0, v12}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const v0, 0x800527

    if-ne v9, v0, :cond_4

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->build_errorOnModuleDirective:Ljava/lang/String;

    invoke-interface {v8}, Lorg/eclipse/jdt/core/compiler/IProblem;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    const-string v12, "JDT"

    const-string v14, "sourceId"

    const-string v15, "org.eclipse.jdt.core.problem"

    const/4 v11, 0x1

    if-eqz v0, :cond_8

    sget-boolean v16, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v16, :cond_5

    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    iget-object v13, v1, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    iget-object v13, v13, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->javaProject:Lorg/eclipse/jdt/internal/core/JavaProject;

    const-string v6, "org.eclipse.jdt.core.incompleteClasspath"

    invoke-virtual {v13, v6, v11}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    const-string v13, "error"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v13, v1, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    iget-object v13, v13, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->javaProject:Lorg/eclipse/jdt/internal/core/JavaProject;

    const-string v2, "org.eclipse.jdt.core.builder.invalidClasspath"

    invoke-virtual {v13, v2, v11}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const-string v13, "abort"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->removeProblemsAndTasksFor(Lorg/eclipse/core/resources/IResource;)V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->keepStoringProblemMarkers:Z

    :cond_6
    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v2, v15}, Lorg/eclipse/core/resources/IProject;->createMarker(Ljava/lang/String;)Lorg/eclipse/core/resources/IMarker;

    move-result-object v2

    const-string v13, "severity"

    const-string v11, "categoryId"

    const-string v3, "message"

    filled-new-array {v3, v13, v11, v14}, [Ljava/lang/String;

    move-result-object v3

    if-eqz v6, :cond_7

    const/4 v6, 0x2

    goto :goto_2

    :cond_7
    const/4 v6, 0x1

    :goto_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v11, 0xa

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v0, v6, v11, v12}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lorg/eclipse/core/resources/IMarker;->setAttributes([Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    invoke-virtual {v8}, Lorg/eclipse/jdt/core/compiler/CategorizedProblem;->getMarkerType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v3, v0

    goto :goto_4

    :cond_9
    move-object/from16 v17, v4

    :goto_3
    const/4 v8, 0x0

    goto/16 :goto_10

    :cond_a
    const/4 v3, 0x0

    :goto_4
    const v0, 0x20000391

    if-ne v9, v0, :cond_10

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->getMainTypeName()[C

    move-result-object v6

    sget-object v11, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->PACKAGE_INFO_NAME:[C

    invoke-static {v6, v11}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v6

    if-nez v6, :cond_10

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->getFileName()[C

    move-result-object v6

    const/16 v11, 0x2f

    invoke-static {v11, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v11

    const/4 v13, -0x1

    if-ne v11, v13, :cond_b

    sget-char v11, Ljava/io/File;->separatorChar:C

    invoke-static {v11, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v11

    :cond_b
    if-eq v11, v13, :cond_c

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->getFileName()[C

    move-result-object v6

    invoke-static {v6, v11, v13}, Lorg/eclipse/jdt/internal/core/util/Util;->getPackageFragment([CII)Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Lorg/eclipse/jdt/internal/core/PackageFragment;

    goto :goto_5

    :cond_c
    const/4 v11, 0x0

    :goto_5
    if-eqz v11, :cond_10

    :try_start_0
    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/core/Openable;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v6

    const/4 v13, 0x0

    invoke-interface {v6, v15, v13, v13}, Lorg/eclipse/core/resources/IResource;->findMarkers(Ljava/lang/String;ZI)[Lorg/eclipse/core/resources/IMarker;

    move-result-object v6

    array-length v13, v6

    const/4 v15, 0x0

    :goto_6
    if-lt v15, v13, :cond_d

    move-object/from16 v17, v4

    goto :goto_8

    :cond_d
    aget-object v0, v6, v15
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v17, v4

    :try_start_1
    const-string v4, "id"

    invoke-interface {v0, v4}, Lorg/eclipse/core/resources/IMarker;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_1 .. :try_end_1} :catch_0

    const v4, 0x20000391

    if-ne v0, v4, :cond_e

    goto :goto_3

    :cond_e
    add-int/lit8 v15, v15, 0x1

    move v0, v4

    move-object/from16 v4, v17

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object/from16 v17, v4

    :goto_7
    sget-boolean v4, Lorg/eclipse/jdt/internal/core/JavaModelManager;->VERBOSE:Z

    if-eqz v4, :cond_f

    invoke-virtual {v0}, Lorg/eclipse/core/runtime/CoreException;->printStackTrace()V

    :cond_f
    :goto_8
    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/core/Openable;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    if-eqz v0, :cond_11

    move-object v10, v0

    goto :goto_9

    :cond_10
    move-object/from16 v17, v4

    :cond_11
    :goto_9
    invoke-interface {v10, v2}, Lorg/eclipse/core/resources/IResource;->createMarker(Ljava/lang/String;)Lorg/eclipse/core/resources/IMarker;

    move-result-object v0

    sget-object v2, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->JAVA_PROBLEM_MARKER_ATTRIBUTE_NAMES:[Ljava/lang/String;

    array-length v4, v2

    const/4 v6, 0x1

    xor-int/2addr v3, v6

    invoke-virtual {v8}, Lorg/eclipse/jdt/core/compiler/CategorizedProblem;->getExtraMarkerAttributeNames()[Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_12

    const/4 v10, 0x0

    goto :goto_a

    :cond_12
    array-length v10, v6

    :goto_a
    if-gtz v3, :cond_14

    if-lez v10, :cond_13

    goto :goto_b

    :cond_13
    const/4 v15, 0x0

    goto :goto_c

    :cond_14
    :goto_b
    add-int v11, v4, v3

    add-int v13, v11, v10

    new-array v13, v13, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-static {v2, v15, v13, v15, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lez v3, :cond_15

    aput-object v14, v13, v4

    :cond_15
    invoke-static {v6, v15, v13, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v13

    :goto_c
    array-length v4, v2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v8}, Lorg/eclipse/jdt/core/compiler/IProblem;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v15

    invoke-interface {v8}, Lorg/eclipse/jdt/core/compiler/IProblem;->isError()Z

    move-result v6

    if-eqz v6, :cond_16

    sget-object v6, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->S_ERROR:Ljava/lang/Integer;

    :goto_d
    const/4 v11, 0x1

    goto :goto_e

    :cond_16
    invoke-interface {v8}, Lorg/eclipse/jdt/core/compiler/IProblem;->isWarning()Z

    move-result v6

    if-eqz v6, :cond_17

    sget-object v6, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->S_WARNING:Ljava/lang/Integer;

    goto :goto_d

    :cond_17
    sget-object v6, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->S_INFO:Ljava/lang/Integer;

    goto :goto_d

    :goto_e
    aput-object v6, v4, v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v9, 0x2

    aput-object v6, v4, v9

    invoke-interface {v8}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceStart()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v9, 0x3

    aput-object v6, v4, v9

    invoke-interface {v8}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceEnd()I

    move-result v6

    add-int/2addr v6, v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v9, 0x4

    aput-object v6, v4, v9

    invoke-interface {v8}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceLineNumber()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v9, 0x5

    aput-object v6, v4, v9

    invoke-interface {v8}, Lorg/eclipse/jdt/core/compiler/IProblem;->getArguments()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/eclipse/jdt/internal/core/util/Util;->getProblemArgumentsForMarker([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x6

    aput-object v6, v4, v9

    invoke-virtual {v8}, Lorg/eclipse/jdt/core/compiler/CategorizedProblem;->getCategoryID()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v9, 0x7

    aput-object v6, v4, v9

    const/16 v6, 0x8

    if-lez v3, :cond_18

    aput-object v12, v4, v6

    const/16 v6, 0x9

    :cond_18
    if-lez v10, :cond_19

    invoke-virtual {v8}, Lorg/eclipse/jdt/core/compiler/CategorizedProblem;->getExtraMarkerAttributeValues()[Ljava/lang/Object;

    move-result-object v3

    const/4 v8, 0x0

    invoke-static {v3, v8, v4, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_f

    :cond_19
    const/4 v8, 0x0

    :goto_f
    invoke-interface {v0, v2, v4}, Lorg/eclipse/core/resources/IMarker;->setAttributes([Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, v1, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->keepStoringProblemMarkers:Z

    if-nez v0, :cond_1a

    return-void

    :cond_1a
    :goto_10
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v6, v8

    move-object/from16 v4, v17

    goto/16 :goto_0

    :cond_1b
    :goto_11
    return-void
.end method

.method public storeTasksFor(Lorg/eclipse/jdt/internal/core/builder/SourceFile;[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    array-length v0, p2

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->resource:Lorg/eclipse/core/resources/IFile;

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_1

    return-void

    :cond_1
    aget-object v3, p2, v2

    invoke-interface {v3}, Lorg/eclipse/jdt/core/compiler/IProblem;->getID()I

    move-result v4

    const v5, 0x200001c2

    if-ne v4, v5, :cond_7

    const-string v4, "org.eclipse.jdt.core.task"

    invoke-interface {p1, v4}, Lorg/eclipse/core/resources/IResource;->createMarker(Ljava/lang/String;)Lorg/eclipse/core/resources/IMarker;

    move-result-object v4

    sget-object v5, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->P_NORMAL:Ljava/lang/Integer;

    invoke-interface {v3}, Lorg/eclipse/jdt/core/compiler/IProblem;->getArguments()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v6, v6, v7

    const-string v8, "HIGH"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v5, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->P_HIGH:Ljava/lang/Integer;

    goto :goto_1

    :cond_2
    const-string v8, "LOW"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v5, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->P_LOW:Ljava/lang/Integer;

    :cond_3
    :goto_1
    sget-object v6, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->JAVA_TASK_MARKER_ATTRIBUTE_NAMES:[Ljava/lang/String;

    array-length v8, v6

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/compiler/CategorizedProblem;->getExtraMarkerAttributeNames()[Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_4

    move v10, v1

    goto :goto_2

    :cond_4
    array-length v10, v9

    :goto_2
    if-lez v10, :cond_5

    add-int v11, v8, v10

    new-array v11, v11, [Ljava/lang/String;

    invoke-static {v6, v1, v11, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v9, v1, v11, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v11

    :cond_5
    array-length v8, v6

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v3}, Lorg/eclipse/jdt/core/compiler/IProblem;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    const/4 v9, 0x1

    aput-object v5, v8, v9

    invoke-interface {v3}, Lorg/eclipse/jdt/core/compiler/IProblem;->getID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v7

    invoke-interface {v3}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceStart()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x3

    aput-object v5, v8, v7

    invoke-interface {v3}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceEnd()I

    move-result v5

    add-int/2addr v5, v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x4

    aput-object v5, v8, v7

    invoke-interface {v3}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceLineNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x5

    aput-object v5, v8, v7

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v7, 0x6

    aput-object v5, v8, v7

    const-string v5, "JDT"

    const/4 v7, 0x7

    aput-object v5, v8, v7

    if-lez v10, :cond_6

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/compiler/CategorizedProblem;->getExtraMarkerAttributeValues()[Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x8

    invoke-static {v3, v1, v8, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    invoke-interface {v4, v6, v8}, Lorg/eclipse/core/resources/IMarker;->setAttributes([Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    :goto_3
    return-void
.end method

.method public updateProblemsFor(Lorg/eclipse/jdt/internal/core/builder/SourceFile;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getProblems()[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    move-result-object p2

    if-eqz p2, :cond_1

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->updateProblemCounts([Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->storeProblemsFor(Lorg/eclipse/jdt/internal/core/builder/SourceFile;[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateTasksFor(Lorg/eclipse/jdt/internal/core/builder/SourceFile;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getTasks()[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    move-result-object p2

    if-eqz p2, :cond_1

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->storeTasksFor(Lorg/eclipse/jdt/internal/core/builder/SourceFile;[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public writeClassFile(Lorg/eclipse/jdt/internal/compiler/ClassFile;Lorg/eclipse/jdt/internal/core/builder/SourceFile;Z)[C
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    new-instance v3, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->fileName()[C

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    new-instance v0, Lorg/eclipse/core/runtime/Path;

    invoke-direct {v0, v3}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->sourceLocation:Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->binaryFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    invoke-interface {v0, v4}, Lorg/eclipse/core/runtime/IPath;->removeLastSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->createFolder(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/resources/IContainer;)Lorg/eclipse/core/resources/IContainer;

    move-result-object v1

    new-instance v2, Lorg/eclipse/core/runtime/Path;

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->lastSegment()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object v6, v0

    :goto_0
    const-string v0, "class"

    invoke-interface {v6, v0}, Lorg/eclipse/core/runtime/IPath;->addFileExtension(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/eclipse/core/resources/IContainer;->getFile(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFile;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->writeClassFileContents(Lorg/eclipse/jdt/internal/compiler/ClassFile;Lorg/eclipse/core/resources/IFile;Ljava/lang/String;ZLorg/eclipse/jdt/internal/core/builder/SourceFile;)V

    invoke-interface {v6}, Lorg/eclipse/core/runtime/IPath;->lastSegment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    return-object p1
.end method

.method public writeClassFileContents(Lorg/eclipse/jdt/internal/compiler/ClassFile;Lorg/eclipse/core/resources/IFile;Ljava/lang/String;ZLorg/eclipse/jdt/internal/core/builder/SourceFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    new-instance p3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->getBytes()[B

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p2}, Lorg/eclipse/core/resources/IFile;->exists()Z

    move-result p1

    const/4 p4, 0x0

    if-eqz p1, :cond_2

    sget-boolean p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "Writing changed class file "

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/eclipse/core/resources/IFile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p2}, Lorg/eclipse/core/resources/IFile;->isDerived()Z

    move-result p1

    const/4 p5, 0x1

    if-nez p1, :cond_1

    invoke-interface {p2, p5, p4}, Lorg/eclipse/core/resources/IFile;->setDerived(ZLorg/eclipse/core/runtime/IProgressMonitor;)V

    :cond_1
    const/4 p1, 0x0

    invoke-interface {p2, p3, p5, p1, p4}, Lorg/eclipse/core/resources/IFile;->setContents(Ljava/io/InputStream;ZZLorg/eclipse/core/runtime/IProgressMonitor;)V

    goto :goto_0

    :cond_2
    sget-boolean p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p1, :cond_3

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "Writing new class file "

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/eclipse/core/resources/IFile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    const/16 p1, 0x401

    invoke-interface {p2, p3, p1, p4}, Lorg/eclipse/core/resources/IFile;->create(Ljava/io/InputStream;ILorg/eclipse/core/runtime/IProgressMonitor;)V

    :goto_0
    return-void
.end method
