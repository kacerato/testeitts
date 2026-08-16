.class public Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;
.super Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;
.source "SourceFile"


# instance fields
.field final compilationGroup:Lorg/eclipse/jdt/internal/core/CompilationGroup;

.field incrementalBuilder:Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;

.field secondaryTypes:Ljava/util/ArrayList;

.field typeLocatorsWithUndefinedTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;ZLorg/eclipse/jdt/internal/core/CompilationGroup;)V
    .locals 1

    .line 7
    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->newState:Lorg/eclipse/jdt/internal/core/builder/State;

    invoke-direct {p0, v0, p2, p1, p3}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;-><init>(Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;ZLorg/eclipse/jdt/internal/core/builder/State;Lorg/eclipse/jdt/internal/core/CompilationGroup;)V

    .line 8
    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->compilationGroup:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    .line 9
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->nameEnvironment:Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->isIncrementalBuild:Z

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->incrementalBuilder:Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;

    .line 11
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->secondaryTypes:Ljava/util/ArrayList;

    .line 12
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->typeLocatorsWithUndefinedTypes:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;ZLorg/eclipse/jdt/internal/core/CompilationGroup;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;-><init>(Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;ZLorg/eclipse/jdt/internal/core/builder/State;Lorg/eclipse/jdt/internal/core/CompilationGroup;)V

    .line 2
    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->compilationGroup:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    .line 3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->nameEnvironment:Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->isIncrementalBuild:Z

    .line 4
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->incrementalBuilder:Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;

    .line 5
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->secondaryTypes:Ljava/util/ArrayList;

    .line 6
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->typeLocatorsWithUndefinedTypes:Ljava/util/Set;

    return-void
.end method

.method private printStats()V
    .locals 14

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->compiler:Lorg/eclipse/jdt/internal/compiler/Compiler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/Compiler;->stats:Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->elapsedTime()J

    move-result-wide v1

    iget-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->lineCount:J

    long-to-double v5, v3

    const-wide v7, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v5, v7

    long-to-double v7, v1

    div-double/2addr v5, v7

    double-to-int v5, v5

    int-to-double v5, v5

    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    div-double/2addr v5, v9

    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, ">FULL BUILD STATS for: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    iget-object v13, v13, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->javaProject:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/core/JavaProject;->getElementName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, ">   compiled "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " lines in "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms:"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " lines/s"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">   parse: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->parseTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->parseTime:J

    long-to-double v3, v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double/2addr v3, v5

    div-double/2addr v3, v7

    double-to-int v3, v3

    int-to-double v3, v3

    div-double/2addr v3, v9

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, "%)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, ", resolve: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v12, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->resolveTime:J

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->resolveTime:J

    long-to-double v12, v12

    mul-double/2addr v12, v5

    div-double/2addr v12, v7

    double-to-int v4, v12

    int-to-double v12, v4

    div-double/2addr v12, v9

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, ", analyze: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v12, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->analyzeTime:J

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->analyzeTime:J

    long-to-double v12, v12

    mul-double/2addr v12, v5

    div-double/2addr v12, v7

    double-to-int v4, v12

    int-to-double v12, v4

    div-double/2addr v12, v9

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, ", generate: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v12, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->generateTime:J

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->generateTime:J

    long-to-double v12, v12

    mul-double/2addr v12, v5

    div-double/2addr v12, v7

    double-to-int v0, v12

    int-to-double v4, v0

    div-double/2addr v4, v9

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public acceptSecondaryType(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->secondaryTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->fileName()[C

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public build()V
    .locals 4

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "FULL build"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->build_cleaningOutput:Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v2}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->subTask(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->compilationGroup:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    sget-object v1, Lorg/eclipse/jdt/internal/core/CompilationGroup;->TEST:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->removeProblemsAndTasksFor(Lorg/eclipse/core/resources/IResource;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->cleanOutputFolders(Z)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    const v1, 0x3d4ccccd    # 0.05f

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->updateProgressDelta(F)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->build_analyzingSources:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->subTask(Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashSet;

    const/16 v1, 0x21

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->addAllSourceFiles(Ljava/util/LinkedHashSet;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->updateProgressDelta(F)V

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    new-array v2, v1, [Lorg/eclipse/jdt/internal/core/builder/SourceFile;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    int-to-float v1, v1

    const/high16 v3, 0x3f400000    # 0.75f

    div-float/2addr v3, v1

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->setProgressPerCompilationUnit(F)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->workQueue:Lorg/eclipse/jdt/internal/core/builder/WorkQueue;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/builder/WorkQueue;->addAll([Lorg/eclipse/jdt/internal/core/builder/SourceFile;)V

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->compile([Lorg/eclipse/jdt/internal/core/builder/SourceFile;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->typeLocatorsWithUndefinedTypes:Ljava/util/Set;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->secondaryTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->rebuildTypesAffectedBySecondaryTypes()V

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->incrementalBuilder:Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->buildAfterBatchBuild()V

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->javaProject:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->hasCycleMarker()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->mustPropagateStructuralChanges()V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->SHOW_STATS:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->printStats()V

    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->cleanUp()V

    return-void

    :goto_1
    :try_start_1
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->internalException(Lorg/eclipse/core/runtime/CoreException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->SHOW_STATS:Z

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->printStats()V

    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->cleanUp()V

    throw v0
.end method

.method public cleanOutputFolders(Z)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->javaProject:Lorg/eclipse/jdt/internal/core/JavaProject;

    const-string v1, "org.eclipse.jdt.core.builder.cleanOutputFolder"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "clean"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->compilationGroup:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    sget-object v3, Lorg/eclipse/jdt/internal/core/CompilationGroup;->TEST:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->participants:[Lorg/eclipse/jdt/core/compiler/CompilationParticipant;

    if-eqz v0, :cond_1

    array-length v0, v0

    move v3, v1

    :goto_0
    if-lt v3, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    iget-object v5, v4, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->participants:[Lorg/eclipse/jdt/core/compiler/CompilationParticipant;

    aget-object v5, v5, v3

    iget-object v4, v4, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->javaProject:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v5, v4}, Lorg/eclipse/jdt/core/compiler/CompilationParticipant;->cleanStarting(Lorg/eclipse/jdt/core/IJavaProject;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    array-length v3, v3

    invoke-direct {v0, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    array-length v3, v3

    move v4, v1

    :goto_2
    if-lt v4, v3, :cond_2

    goto/16 :goto_9

    :cond_2
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    sget-object v6, Lorg/eclipse/jdt/internal/core/util/Messages;->build_cleaningOutput:Ljava/lang/String;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    iget-object v7, v7, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v7}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->subTask(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    aget-object v5, v5, v4

    iget-boolean v6, v5, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->hasIndependentOutputFolder:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_6

    iget-object v6, v5, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->binaryFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Lorg/eclipse/core/resources/IContainer;->members()[Lorg/eclipse/core/resources/IResource;

    move-result-object v6

    array-length v8, v6

    move v9, v1

    :goto_3
    if-lt v9, v8, :cond_3

    goto :goto_5

    :cond_3
    aget-object v10, v6, v9

    invoke-interface {v10}, Lorg/eclipse/core/resources/IResource;->isDerived()Z

    move-result v11

    if-nez v11, :cond_4

    new-instance v11, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$1;

    invoke-direct {v11, p0}, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$1;-><init>(Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;)V

    invoke-interface {v10, v11}, Lorg/eclipse/core/resources/IResource;->accept(Lorg/eclipse/core/resources/IResourceVisitor;)V

    :cond_4
    :try_start_0
    invoke-interface {v10, v2, v7}, Lorg/eclipse/core/resources/IResource;->delete(ILorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Error occurred while deleting: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v10}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_5
    :goto_5
    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->checkCancel()V

    if-eqz p1, :cond_9

    invoke-virtual {p0, v5, v2}, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->copyExtraResourcesBack(Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;Z)V

    goto :goto_7

    :cond_6
    iget-object v6, v5, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->sourceFolder:Lorg/eclipse/core/resources/IContainer;

    iget-object v8, v5, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->binaryFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v8, v5, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->exclusionPatterns:[[C

    goto :goto_6

    :cond_7
    move-object v8, v7

    :goto_6
    if-eqz v6, :cond_8

    iget-object v7, v5, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->inclusionPatterns:[[C

    :cond_8
    iget-object v5, v5, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->binaryFolder:Lorg/eclipse/core/resources/IContainer;

    new-instance v6, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$2;

    invoke-direct {v6, p0, v8, v7}, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$2;-><init>(Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;[[C[[C)V

    invoke-interface {v5, v6, v1}, Lorg/eclipse/core/resources/IContainer;->accept(Lorg/eclipse/core/resources/IResourceProxyVisitor;I)V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->checkCancel()V

    :cond_9
    :goto_7
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->checkCancel()V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_a
    if-eqz p1, :cond_d

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    array-length p1, p1

    move v0, v1

    :goto_8
    if-lt v0, p1, :cond_b

    goto :goto_9

    :cond_b
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    aget-object v2, v2, v0

    iget-boolean v3, v2, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->hasIndependentOutputFolder:Z

    if-eqz v3, :cond_c

    invoke-virtual {p0, v2, v1}, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->copyExtraResourcesBack(Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;Z)V

    :cond_c
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->checkCancel()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_d
    :goto_9
    return-void
.end method

.method public cleanUp()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->incrementalBuilder:Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->secondaryTypes:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->typeLocatorsWithUndefinedTypes:Ljava/util/Set;

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->cleanUp()V

    return-void
.end method

.method public compile([Lorg/eclipse/jdt/internal/core/builder/SourceFile;[Lorg/eclipse/jdt/internal/core/builder/SourceFile;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->secondaryTypes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->secondaryTypes:Ljava/util/ArrayList;

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->compile([Lorg/eclipse/jdt/internal/core/builder/SourceFile;[Lorg/eclipse/jdt/internal/core/builder/SourceFile;Z)V

    return-void
.end method

.method public copyExtraResourcesBack(Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->build_copyingResources:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->subTask(Ljava/lang/String;)V

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->sourceFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IContainer;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v5

    iget-object v3, p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->exclusionPatterns:[[C

    iget-object v4, p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->inclusionPatterns:[[C

    iget-object v6, p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->binaryFolder:Lorg/eclipse/core/resources/IContainer;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->sourceFolder:Lorg/eclipse/core/resources/IContainer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->sourceFolder:Lorg/eclipse/core/resources/IContainer;

    new-instance v0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$3;

    move-object v1, v0

    move-object v2, p0

    move v7, p2

    invoke-direct/range {v1 .. v8}, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$3;-><init>(Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;[[C[[CILorg/eclipse/core/resources/IContainer;ZZ)V

    const/4 p2, 0x0

    invoke-interface {p1, v0, p2}, Lorg/eclipse/core/resources/IContainer;->accept(Lorg/eclipse/core/resources/IResourceProxyVisitor;I)V

    return-void
.end method

.method public findOriginalResource(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IResource;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    aget-object v2, v2, v1

    iget-boolean v3, v2, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->hasIndependentOutputFolder:Z

    if-eqz v3, :cond_1

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->sourceFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v2, p1}, Lorg/eclipse/core/resources/IContainer;->getFile(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFile;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/core/resources/IResource;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public processAnnotationResults([Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->incrementalBuilder:Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->compilationGroup:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;-><init>(Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;Lorg/eclipse/jdt/internal/core/CompilationGroup;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->incrementalBuilder:Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->incrementalBuilder:Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->processAnnotationResults([Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;)V

    return-void
.end method

.method public rebuildTypesAffectedBySecondaryTypes()V
    .locals 10

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->incrementalBuilder:Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->compilationGroup:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;-><init>(Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;Lorg/eclipse/jdt/internal/core/CompilationGroup;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->incrementalBuilder:Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->secondaryTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v7, Ljava/util/HashSet;

    mul-int/lit8 v1, v0, 0x2

    invoke-direct {v7, v1}, Ljava/util/HashSet;-><init>(I)V

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8, v0}, Ljava/util/HashSet;-><init>(I)V

    new-instance v9, Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-direct {v9, v1}, Ljava/util/HashSet;-><init>(I)V

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->incrementalBuilder:Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->typeLocatorsWithUndefinedTypes:Ljava/util/Set;

    invoke-virtual {v0, v7, v8, v9, v1}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->addAffectedSourceFiles(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-void

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->secondaryTypes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    new-instance v2, Lorg/eclipse/core/runtime/Path;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    const/4 v1, 0x0

    invoke-direct {v2, v1, v3}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->incrementalBuilder:Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;

    const/4 v3, 0x0

    move-object v4, v7

    move-object v5, v8

    move-object v6, v9

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->addDependentsOf(Lorg/eclipse/core/runtime/IPath;ZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    goto :goto_0
.end method

.method public storeProblemsFor(Lorg/eclipse/jdt/internal/core/builder/SourceFile;[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, p2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    aget-object v1, p2, v0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getID()I

    move-result v1

    const v2, 0x1000002

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->typeLocatorsWithUndefinedTypes:Ljava/util/Set;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->typeLocatorsWithUndefinedTypes:Ljava/util/Set;

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->typeLocatorsWithUndefinedTypes:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->typeLocator()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->storeProblemsFor(Lorg/eclipse/jdt/internal/core/builder/SourceFile;[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "batch image builder for:\n\tnew state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->newState:Lorg/eclipse/jdt/internal/core/builder/State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
