.class public Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;
.super Lorg/eclipse/core/resources/IncrementalProjectBuilder;
.source "SourceFile"


# static fields
.field public static DEBUG:Z = false

.field public static SHOW_STATS:Z = false

.field public static final SOURCE_ID:Ljava/lang/String; = "JDT"

.field static builtProjects:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field binaryLocationsPerProject:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

.field currentProject:Lorg/eclipse/core/resources/IProject;

.field extraResourceFileFilters:[[C

.field extraResourceFolderFilters:[Ljava/lang/String;

.field javaProject:Lorg/eclipse/jdt/internal/core/JavaProject;

.field public lastState:Lorg/eclipse/jdt/internal/core/builder/State;

.field nameEnvironment:Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;

.field notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

.field participants:[Lorg/eclipse/jdt/core/compiler/CompilationParticipant;

.field testNameEnvironment:Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;

.field workspaceRoot:Lorg/eclipse/core/resources/IWorkspaceRoot;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/core/resources/IncrementalProjectBuilder;-><init>()V

    return-void
.end method

.method private buildAll()V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->checkCancel()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->build_preparingBuild:Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v2}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->subTask(Ljava/lang/String;)V

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->lastState:Lorg/eclipse/jdt/internal/core/builder/State;

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JavaBuilder: Clearing last state : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->lastState:Lorg/eclipse/jdt/internal/core/builder/State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->clearLastState()V

    new-instance v0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;

    sget-object v1, Lorg/eclipse/jdt/internal/core/CompilationGroup;->MAIN:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2, v1}, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;-><init>(Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;ZLorg/eclipse/jdt/internal/core/CompilationGroup;)V

    new-instance v1, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;

    sget-object v3, Lorg/eclipse/jdt/internal/core/CompilationGroup;->TEST:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    invoke-direct {v1, v0, v2, v3}, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;-><init>(Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;ZLorg/eclipse/jdt/internal/core/CompilationGroup;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->build()V

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    array-length v2, v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->build()V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->cleanUp()V

    :goto_0
    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->newState:Lorg/eclipse/jdt/internal/core/builder/State;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->recordNewState(Lorg/eclipse/jdt/internal/core/builder/State;)V

    return-void
.end method

.method private buildDeltas(Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->checkCancel()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->build_preparingBuild:Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v2}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->subTask(Ljava/lang/String;)V

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->lastState:Lorg/eclipse/jdt/internal/core/builder/State;

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JavaBuilder: Clearing last state : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->lastState:Lorg/eclipse/jdt/internal/core/builder/State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->clearLastState()V

    new-instance v0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;-><init>(Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;)V

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->build(Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->newState:Lorg/eclipse/jdt/internal/core/builder/State;

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->recordNewState(Lorg/eclipse/jdt/internal/core/builder/State;)V

    goto :goto_0

    :cond_1
    sget-boolean p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p1, :cond_2

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "JavaBuilder: Performing full build since incremental build failed"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->buildAll()V

    :goto_0
    return-void
.end method

.method public static buildFinished()V
    .locals 0

    invoke-static {}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->resetProblemCounters()V

    return-void
.end method

.method public static buildStarting()V
    .locals 0

    return-void
.end method

.method private cleanup()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->participants:[Lorg/eclipse/jdt/core/compiler/CompilationParticipant;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->nameEnvironment:Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->cleanup()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->nameEnvironment:Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->testNameEnvironment:Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->cleanup()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->testNameEnvironment:Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;

    :cond_1
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->binaryLocationsPerProject:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->lastState:Lorg/eclipse/jdt/internal/core/builder/State;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->extraResourceFileFilters:[[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->extraResourceFolderFilters:[Ljava/lang/String;

    return-void
.end method

.method private clearLastState()V
    .locals 3

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->setLastBuiltState(Lorg/eclipse/core/resources/IProject;Ljava/lang/Object;)V

    return-void
.end method

.method private createInconsistentBuildMarker(Lorg/eclipse/core/runtime/CoreException;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/eclipse/core/runtime/CoreException;->getStatus()Lorg/eclipse/core/runtime/IStatus;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IStatus;->isMultiStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IStatus;->getChildren()[Lorg/eclipse/core/runtime/IStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IStatus;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/core/runtime/CoreException;->getMessage()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    const-string v1, "org.eclipse.jdt.core.problem"

    invoke-interface {p1, v1}, Lorg/eclipse/core/resources/IProject;->createMarker(Ljava/lang/String;)Lorg/eclipse/core/resources/IMarker;

    move-result-object p1

    const-string v1, "categoryId"

    const-string v2, "sourceId"

    const-string v3, "message"

    const-string v4, "severity"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->build_inconsistentProject:Ljava/lang/String;

    invoke-static {v2, v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "JDT"

    filled-new-array {v0, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lorg/eclipse/core/resources/IMarker;->setAttributes([Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private findDeltas()Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;
    .locals 15

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->build_readingDelta:Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v2}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->subTask(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->getDelta(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/core/resources/IResourceDelta;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>(I)V

    const-string v2, "JavaBuilder: Missing delta for: "

    const/4 v3, 0x0

    const-string v4, ""

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lorg/eclipse/core/resources/IResourceDelta;->getKind()I

    move-result v5

    if-eqz v5, :cond_1

    sget-boolean v5, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v5, :cond_0

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "JavaBuilder: Found source delta for: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v7}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    invoke-virtual {v1, v5, v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->binaryLocationsPerProject:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->keyTable:[Ljava/lang/Object;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->valueTable:[Ljava/lang/Object;

    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-lt v8, v6, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->subTask(Ljava/lang/String;)V

    return-object v1

    :cond_2
    aget-object v9, v5, v8

    check-cast v9, Lorg/eclipse/core/resources/IProject;

    if-eqz v9, :cond_a

    iget-object v10, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    if-eq v9, v10, :cond_a

    invoke-virtual {p0, v9}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->getLastState(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/internal/core/builder/State;

    move-result-object v10

    iget-object v11, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->lastState:Lorg/eclipse/jdt/internal/core/builder/State;

    invoke-virtual {v11, v9, v10}, Lorg/eclipse/jdt/internal/core/builder/State;->wasStructurallyChanged(Lorg/eclipse/core/resources/IProject;Lorg/eclipse/jdt/internal/core/builder/State;)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/core/builder/State;->wasNoopBuild()Z

    move-result v10

    if-eqz v10, :cond_3

    goto/16 :goto_3

    :cond_3
    aget-object v10, v0, v8

    check-cast v10, [Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    array-length v11, v10

    const/4 v12, 0x1

    move v13, v7

    :goto_1
    if-lt v13, v11, :cond_4

    if-eqz v12, :cond_6

    goto :goto_3

    :cond_4
    aget-object v14, v10, v13

    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->isOutputFolder()Z

    move-result v14

    if-eqz v14, :cond_5

    aput-object v3, v10, v13

    goto :goto_2

    :cond_5
    move v12, v7

    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_6
    iget-object v10, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    sget-object v11, Lorg/eclipse/jdt/internal/core/util/Messages;->build_readingDelta:Ljava/lang/String;

    invoke-interface {v9}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->subTask(Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->getDelta(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/core/resources/IResourceDelta;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-interface {v10}, Lorg/eclipse/core/resources/IResourceDelta;->getKind()I

    move-result v11

    if-eqz v11, :cond_a

    sget-boolean v11, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v11, :cond_7

    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "JavaBuilder: Found binary delta for: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v1, v9, v10}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v0, :cond_9

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->subTask(Ljava/lang/String;)V

    return-object v3

    :cond_a
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_b
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v0, :cond_c

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v2}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_c
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->subTask(Ljava/lang/String;)V

    return-object v3
.end method

.method public static getProblemsFor(Lorg/eclipse/core/resources/IResource;)[Lorg/eclipse/core/resources/IMarker;
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    :try_start_0
    invoke-interface {p0}, Lorg/eclipse/core/resources/IResource;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "org.eclipse.jdt.core.problem"

    const/4 v2, 0x2

    invoke-interface {p0, v1, v0, v2}, Lorg/eclipse/core/resources/IResource;->findMarkers(Ljava/lang/String;ZI)[Lorg/eclipse/core/resources/IMarker;

    move-result-object v1

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/JavaModelManager;->compilationParticipants:Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;->managedMarkerTypes()Ljava/util/HashSet;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v1

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    array-length v5, v1

    move v6, v0

    :goto_0
    if-lt v6, v5, :cond_3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lorg/eclipse/core/resources/IMarker;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p0, v3, v0, v2}, Lorg/eclipse/core/resources/IResource;->findMarkers(Ljava/lang/String;ZI)[Lorg/eclipse/core/resources/IMarker;

    move-result-object v3

    array-length v5, v3

    move v6, v0

    :goto_2
    if-lt v6, v5, :cond_2

    goto :goto_1

    :cond_2
    aget-object v7, v3, v6

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    aget-object v7, v1, v6

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    :cond_4
    new-array p0, v0, [Lorg/eclipse/core/resources/IMarker;

    return-object p0
.end method

.method private getRequiredProjects(Z)[Lorg/eclipse/core/resources/IProject;
    .locals 11

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->javaProject:Lorg/eclipse/jdt/internal/core/JavaProject;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->workspaceRoot:Lorg/eclipse/core/resources/IWorkspaceRoot;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getExternalManager()Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->javaProject:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/JavaProject;->getExpandedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v3

    array-length v4, v3
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v1

    :goto_0
    if-lt v5, v4, :cond_1

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    new-array p1, p1, [Lorg/eclipse/core/resources/IProject;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p1

    :cond_1
    :try_start_1
    aget-object v6, v3, v5

    invoke-interface {v6}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v7

    invoke-interface {v6}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v8, v9, :cond_4

    const/4 v9, 0x2

    if-eq v8, v9, :cond_2

    goto :goto_1

    :cond_2
    iget-object v8, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->workspaceRoot:Lorg/eclipse/core/resources/IWorkspaceRoot;

    invoke-interface {v7}, Lorg/eclipse/core/runtime/IPath;->lastSegment()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getProject(Ljava/lang/String;)Lorg/eclipse/core/resources/IProject;

    move-result-object v7

    check-cast v6, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->isOptional()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v7}, Lorg/eclipse/jdt/internal/core/JavaProject;->hasJavaNature(Lorg/eclipse/core/resources/IProject;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    move-object v10, v7

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_6

    invoke-interface {v7}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v6

    if-lez v6, :cond_6

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->workspaceRoot:Lorg/eclipse/core/resources/IWorkspaceRoot;

    invoke-interface {v7, v1}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/eclipse/core/resources/IWorkspaceRoot;->findMember(Ljava/lang/String;)Lorg/eclipse/core/resources/IResource;

    move-result-object v6

    instance-of v8, v6, Lorg/eclipse/core/resources/IProject;

    if-eqz v8, :cond_5

    move-object v10, v6

    check-cast v10, Lorg/eclipse/core/resources/IProject;

    goto :goto_1

    :cond_5
    invoke-virtual {v2, v7}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->getFolder(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFolder;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-interface {v6}, Lorg/eclipse/core/resources/IResource;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v10

    :cond_6
    :goto_1
    if-eqz v10, :cond_7

    invoke-virtual {v0, v10}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v0, v10}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    new-array p1, v1, [Lorg/eclipse/core/resources/IProject;

    return-object p1

    :cond_8
    :goto_2
    new-array p1, v1, [Lorg/eclipse/core/resources/IProject;

    return-object p1
.end method

.method public static getTasksFor(Lorg/eclipse/core/resources/IResource;)[Lorg/eclipse/core/resources/IMarker;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lorg/eclipse/core/resources/IResource;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "org.eclipse.jdt.core.task"

    const/4 v2, 0x2

    invoke-interface {p0, v1, v0, v2}, Lorg/eclipse/core/resources/IResource;->findMarkers(Ljava/lang/String;ZI)[Lorg/eclipse/core/resources/IMarker;

    move-result-object p0
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    new-array p0, v0, [Lorg/eclipse/core/resources/IMarker;

    return-object p0
.end method

.method private hasClasspathChanged()Z
    .locals 1

    .line 1
    sget-object v0, Lorg/eclipse/jdt/internal/core/CompilationGroup;->MAIN:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->hasClasspathChanged(Lorg/eclipse/jdt/internal/core/CompilationGroup;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/CompilationGroup;->TEST:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->hasClasspathChanged(Lorg/eclipse/jdt/internal/core/CompilationGroup;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private hasClasspathChanged(Lorg/eclipse/jdt/internal/core/CompilationGroup;)Z
    .locals 12

    .line 2
    sget-object v0, Lorg/eclipse/jdt/internal/core/CompilationGroup;->MAIN:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->nameEnvironment:Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->testNameEnvironment:Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;

    :goto_0
    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    if-ne p1, v0, :cond_1

    .line 3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->lastState:Lorg/eclipse/jdt/internal/core/builder/State;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/builder/State;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->lastState:Lorg/eclipse/jdt/internal/core/builder/State;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/builder/State;->testSourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    .line 4
    :goto_1
    array-length v2, v1

    .line 5
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    .line 6
    :goto_2
    const-string v7, "\n!= old location: "

    const-string v8, "JavaBuilder: New location: "

    const/4 v9, 0x1

    if-ge v5, v2, :cond_7

    if-lt v6, v3, :cond_2

    goto :goto_4

    .line 7
    :cond_2
    aget-object v10, v1, v5

    aget-object v11, v0, v6

    invoke-virtual {v10, v11}, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_3

    .line 8
    :cond_3
    :try_start_0
    aget-object v10, v1, v5

    iget-object v10, v10, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->sourceFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v10}, Lorg/eclipse/core/resources/IContainer;->members()[Lorg/eclipse/core/resources/IResource;

    move-result-object v10

    array-length v10, v10

    if-nez v10, :cond_4

    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 9
    :cond_4
    iget-object v10, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->lastState:Lorg/eclipse/jdt/internal/core/builder/State;

    aget-object v11, v0, v6

    iget-object v11, v11, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->sourceFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-virtual {v10, v11}, Lorg/eclipse/jdt/internal/core/builder/State;->isSourceFolderEmpty(Lorg/eclipse/core/resources/IContainer;)Z

    move-result v10
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v10, :cond_5

    add-int/lit8 v5, v5, -0x1

    :goto_3
    add-int/2addr v5, v9

    add-int/2addr v6, v9

    goto :goto_2

    .line 10
    :catch_0
    :cond_5
    sget-boolean p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p1, :cond_6

    .line 11
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, v1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, v1, v0}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->printLocations([Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;)V

    :cond_6
    return v9

    :cond_7
    :goto_4
    if-lt v5, v2, :cond_14

    :goto_5
    if-lt v6, v3, :cond_11

    .line 13
    sget-object v0, Lorg/eclipse/jdt/internal/core/CompilationGroup;->MAIN:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    if-ne p1, v0, :cond_8

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->nameEnvironment:Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;

    goto :goto_6

    :cond_8
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->testNameEnvironment:Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;

    :goto_6
    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->binaryLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    if-ne p1, v0, :cond_9

    .line 14
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->lastState:Lorg/eclipse/jdt/internal/core/builder/State;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/builder/State;->binaryLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    goto :goto_7

    :cond_9
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->lastState:Lorg/eclipse/jdt/internal/core/builder/State;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/builder/State;->testBinaryLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    .line 15
    :goto_7
    array-length v0, v1

    .line 16
    array-length v2, p1

    move v3, v4

    move v5, v3

    :goto_8
    if-ge v3, v0, :cond_d

    if-lt v5, v2, :cond_a

    goto :goto_9

    .line 17
    :cond_a
    aget-object v6, v1, v3

    aget-object v10, p1, v5

    invoke-virtual {v6, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 18
    :cond_b
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 19
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, v1, p1}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->printLocations([Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;)V

    :cond_c
    return v9

    :cond_d
    :goto_9
    if-lt v3, v0, :cond_f

    if-ge v5, v2, :cond_e

    goto :goto_a

    :cond_e
    return v4

    .line 21
    :cond_f
    :goto_a
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v0, :cond_10

    .line 22
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "JavaBuilder: Number of binary folders/jar files has changed:"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, v1, p1}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->printLocations([Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;)V

    :cond_10
    return v9

    .line 24
    :cond_11
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->lastState:Lorg/eclipse/jdt/internal/core/builder/State;

    aget-object v5, v0, v6

    iget-object v5, v5, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->sourceFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-virtual {v2, v5}, Lorg/eclipse/jdt/internal/core/builder/State;->isSourceFolderEmpty(Lorg/eclipse/core/resources/IContainer;)Z

    move-result v2

    if-eqz v2, :cond_12

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 25
    :cond_12
    sget-boolean p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p1, :cond_13

    .line 26
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "JavaBuilder: Removed non-empty source folder"

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, v1, v0}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->printLocations([Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;)V

    :cond_13
    return v9

    .line 28
    :cond_14
    :try_start_1
    aget-object v10, v1, v5

    iget-object v10, v10, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->sourceFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v10}, Lorg/eclipse/core/resources/IContainer;->members()[Lorg/eclipse/core/resources/IResource;

    move-result-object v10

    array-length v10, v10
    :try_end_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v10, :cond_15

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    .line 29
    :catch_1
    :cond_15
    sget-boolean p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p1, :cond_16

    .line 30
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "JavaBuilder: Added non-empty source folder"

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, v1, v0}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->printLocations([Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;)V

    :cond_16
    return v9
.end method

.method private hasJavaBuilder(Lorg/eclipse/core/resources/IProject;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/eclipse/core/resources/IProject;->getDescription()Lorg/eclipse/core/resources/IProjectDescription;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/core/resources/IProjectDescription;->getBuildSpec()[Lorg/eclipse/core/resources/ICommand;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return v1

    :cond_0
    aget-object v3, p1, v2

    invoke-interface {v3}, Lorg/eclipse/core/resources/ICommand;->getBuilderName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "org.eclipse.jdt.core.javabuilder"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private hasStructuralDelta()Z
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->getDelta(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/core/resources/IResourceDelta;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/eclipse/core/resources/IResourceDelta;->getKind()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->binaryLocationsPerProject:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    if-eqz v2, :cond_2

    array-length v3, v2

    move v4, v1

    :goto_0
    if-lt v4, v3, :cond_0

    goto :goto_1

    :cond_0
    aget-object v5, v2, v4

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->getProjectRelativePath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v0, v5}, Lorg/eclipse/core/resources/IResourceDelta;->findMember(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IResourceDelta;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v5}, Lorg/eclipse/core/resources/IResourceDelta;->getKind()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method private initializeBuilder(IZ)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    invoke-static {v1}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaProject;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->javaProject:Lorg/eclipse/jdt/internal/core/JavaProject;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v1}, Lorg/eclipse/core/resources/IProject;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v1

    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->workspaceRoot:Lorg/eclipse/core/resources/IWorkspaceRoot;

    const/4 v1, 0x0

    if-eqz p2, :cond_5

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/JavaModelManager;->compilationParticipants:Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->javaProject:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;->getCompilationParticipants(Lorg/eclipse/jdt/core/IJavaProject;)[Lorg/eclipse/jdt/core/compiler/CompilationParticipant;

    move-result-object v2

    iput-object v2, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->participants:[Lorg/eclipse/jdt/core/compiler/CompilationParticipant;

    if-eqz v2, :cond_2

    array-length v2, v2

    move/from16 v3, p1

    move v4, v1

    :goto_0
    if-lt v4, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->participants:[Lorg/eclipse/jdt/core/compiler/CompilationParticipant;

    aget-object v5, v5, v4

    iget-object v6, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->javaProject:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/core/compiler/CompilationParticipant;->aboutToBuild(Lorg/eclipse/jdt/core/IJavaProject;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    const/4 v3, 0x6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move/from16 v3, p1

    :goto_1
    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v2}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->builtProjects:Ljava/util/LinkedHashSet;

    if-eqz v4, :cond_3

    invoke-virtual {v4, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v4, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->builtProjects:Ljava/util/LinkedHashSet;

    :cond_4
    sget-object v4, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->builtProjects:Ljava/util/LinkedHashSet;

    invoke-virtual {v4, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move/from16 v3, p1

    :goto_2
    new-instance v7, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    const/4 v2, 0x3

    invoke-direct {v7, v2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>(I)V

    iput-object v7, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->binaryLocationsPerProject:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    new-instance v2, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;

    iget-object v5, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->workspaceRoot:Lorg/eclipse/core/resources/IWorkspaceRoot;

    iget-object v6, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->javaProject:Lorg/eclipse/jdt/internal/core/JavaProject;

    iget-object v8, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    sget-object v9, Lorg/eclipse/jdt/internal/core/CompilationGroup;->MAIN:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;-><init>(Lorg/eclipse/core/resources/IWorkspaceRoot;Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;Lorg/eclipse/jdt/internal/core/CompilationGroup;)V

    iput-object v2, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->nameEnvironment:Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;

    new-instance v2, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;

    iget-object v11, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->workspaceRoot:Lorg/eclipse/core/resources/IWorkspaceRoot;

    iget-object v12, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->javaProject:Lorg/eclipse/jdt/internal/core/JavaProject;

    iget-object v13, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->binaryLocationsPerProject:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object v14, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    sget-object v15, Lorg/eclipse/jdt/internal/core/CompilationGroup;->TEST:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;-><init>(Lorg/eclipse/core/resources/IWorkspaceRoot;Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;Lorg/eclipse/jdt/internal/core/CompilationGroup;)V

    iput-object v2, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->testNameEnvironment:Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;

    if-eqz p2, :cond_e

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->javaProject:Lorg/eclipse/jdt/internal/core/JavaProject;

    const-string v4, "org.eclipse.jdt.core.builder.resourceCopyExclusionFilter"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_6

    const/16 v6, 0x2c

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v6, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitAndTrimOn(C[C)[[C

    move-result-object v2

    goto :goto_3

    :cond_6
    move-object v2, v4

    :goto_3
    if-nez v2, :cond_7

    iput-object v4, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->extraResourceFileFilters:[[C

    iput-object v4, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->extraResourceFolderFilters:[Ljava/lang/String;

    goto :goto_8

    :cond_7
    array-length v4, v2

    move v6, v1

    move v7, v6

    move v8, v7

    :goto_4
    const/16 v9, 0x2f

    if-lt v6, v4, :cond_b

    new-array v4, v7, [[C

    iput-object v4, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->extraResourceFileFilters:[[C

    new-array v4, v8, [Ljava/lang/String;

    iput-object v4, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->extraResourceFolderFilters:[Ljava/lang/String;

    array-length v10, v2

    move v4, v1

    :goto_5
    if-lt v4, v10, :cond_8

    goto :goto_8

    :cond_8
    aget-object v6, v2, v4

    array-length v11, v6

    if-nez v11, :cond_9

    goto :goto_6

    :cond_9
    array-length v11, v6

    sub-int/2addr v11, v5

    aget-char v11, v6, v11

    if-ne v11, v9, :cond_a

    iget-object v11, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->extraResourceFolderFilters:[Ljava/lang/String;

    add-int/lit8 v8, v8, -0x1

    new-instance v12, Ljava/lang/String;

    array-length v13, v6

    sub-int/2addr v13, v5

    invoke-direct {v12, v6, v1, v13}, Ljava/lang/String;-><init>([CII)V

    aput-object v12, v11, v8

    goto :goto_6

    :cond_a
    iget-object v11, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->extraResourceFileFilters:[[C

    add-int/lit8 v7, v7, -0x1

    aput-object v6, v11, v7

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_b
    aget-object v10, v2, v6

    array-length v11, v10

    if-nez v11, :cond_c

    goto :goto_7

    :cond_c
    array-length v11, v10

    sub-int/2addr v11, v5

    aget-char v10, v10, v11

    if-ne v10, v9, :cond_d

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_d
    add-int/lit8 v7, v7, 0x1

    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_e
    :goto_8
    return v3
.end method

.method private isClasspathBroken(Lorg/eclipse/jdt/internal/core/JavaProject;Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v0

    const-string v1, "org.eclipse.jdt.core.buildpath_problem"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lorg/eclipse/core/resources/IProject;->findMarkers(Ljava/lang/String;ZI)[Lorg/eclipse/core/resources/IMarker;

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_0

    return v2

    :cond_0
    aget-object v4, v0, v3

    const-string v5, "severity"

    const/4 v6, -0x1

    invoke-interface {v4, v5, v6}, Lorg/eclipse/core/resources/IMarker;->getAttribute(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    if-eqz p2, :cond_1

    aget-object p2, v0, v3

    const-string v0, "id"

    invoke-interface {p2, v0}, Lorg/eclipse/core/resources/IMarker;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v0, 0x3f6

    if-ne p2, v0, :cond_1

    new-instance p2, Lorg/eclipse/jdt/internal/core/ClasspathValidation;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/internal/core/ClasspathValidation;-><init>(Lorg/eclipse/jdt/internal/core/JavaProject;)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/ClasspathValidation;->validate()V

    invoke-direct {p0, p1, v2}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->isClasspathBroken(Lorg/eclipse/jdt/internal/core/JavaProject;Z)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private isWorthBuilding()Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->javaProject:Lorg/eclipse/jdt/internal/core/JavaProject;

    const-string v2, "org.eclipse.jdt.core.builder.invalidClasspath"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "abort"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "JavaBuilder: Ignoring invalid classpath"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return v3

    :cond_1
    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->javaProject:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-direct {v0, v1, v3}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->isClasspathBroken(Lorg/eclipse/jdt/internal/core/JavaProject;Z)Z

    move-result v1

    const-string v2, "JDT"

    const/16 v4, 0xa

    const/4 v5, 0x2

    const-string v6, "sourceId"

    const-string v7, "categoryId"

    const-string v8, "severity"

    const-string v9, "message"

    const-string v10, "org.eclipse.jdt.core.problem"

    const/4 v11, 0x0

    if-eqz v1, :cond_3

    sget-boolean v1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "JavaBuilder: Aborted build because project has classpath errors (incomplete or involved in cycle)"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->removeProblemsAndTasksFor(Lorg/eclipse/core/resources/IResource;)V

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v1, v10}, Lorg/eclipse/core/resources/IProject;->createMarker(Ljava/lang/String;)Lorg/eclipse/core/resources/IMarker;

    move-result-object v1

    filled-new-array {v9, v8, v7, v6}, [Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lorg/eclipse/jdt/internal/core/util/Messages;->build_abortDueToClasspathProblems:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v6, v5, v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lorg/eclipse/core/resources/IMarker;->setAttributes([Ljava/lang/String;[Ljava/lang/Object;)V

    return v11

    :cond_3
    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->javaProject:Lorg/eclipse/jdt/internal/core/JavaProject;

    const-string v12, "org.eclipse.jdt.core.incompleteClasspath"

    invoke-virtual {v1, v12, v3}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const-string v12, "warning"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v3

    :cond_4
    invoke-direct {v0, v11}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->getRequiredProjects(Z)[Lorg/eclipse/core/resources/IProject;

    move-result-object v1

    array-length v13, v1

    move v14, v11

    :goto_0
    if-lt v14, v13, :cond_5

    return v3

    :cond_5
    aget-object v15, v1, v14

    invoke-virtual {v0, v15}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->getLastState(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/internal/core/builder/State;

    move-result-object v16

    if-nez v16, :cond_c

    invoke-static {v15}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v16

    move-object/from16 v11, v16

    check-cast v11, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/core/JavaProject;->hasCycleMarker()Z

    move-result v16

    const-string v4, "JavaBuilder: Continued to build even though prereq project "

    if-eqz v16, :cond_7

    iget-object v5, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->javaProject:Lorg/eclipse/jdt/internal/core/JavaProject;

    move-object/from16 v17, v1

    const-string v1, "org.eclipse.jdt.core.circularClasspath"

    invoke-virtual {v5, v1, v3}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-boolean v1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v1, :cond_6

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v15}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " was not built since its part of a cycle"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    :goto_1
    const/4 v1, 0x0

    const/4 v5, 0x2

    const/16 v11, 0xa

    goto/16 :goto_4

    :cond_7
    move-object/from16 v17, v1

    :cond_8
    invoke-direct {v0, v15}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->hasJavaBuilder(Lorg/eclipse/core/resources/IProject;)Z

    move-result v1

    if-nez v1, :cond_9

    sget-boolean v1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v1, :cond_6

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v15}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not built by JavaBuilder"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v1, :cond_a

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "JavaBuilder: Aborted build because prereq project "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v15}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " was not built"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_a
    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->removeProblemsAndTasksFor(Lorg/eclipse/core/resources/IResource;)V

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v1, v10}, Lorg/eclipse/core/resources/IProject;->createMarker(Ljava/lang/String;)Lorg/eclipse/core/resources/IMarker;

    move-result-object v1

    filled-new-array {v9, v8, v7, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v11, v3}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->isClasspathBroken(Lorg/eclipse/jdt/internal/core/JavaProject;Z)Z

    move-result v3

    if-eqz v3, :cond_b

    sget-object v3, Lorg/eclipse/jdt/internal/core/util/Messages;->build_prereqProjectHasClasspathProblems:Ljava/lang/String;

    invoke-interface {v15}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    const/4 v5, 0x2

    goto :goto_3

    :cond_b
    sget-object v3, Lorg/eclipse/jdt/internal/core/util/Messages;->build_prereqProjectMustBeRebuilt:Ljava/lang/String;

    invoke-interface {v15}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :goto_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v11, 0xa

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v3, v5, v6, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lorg/eclipse/core/resources/IMarker;->setAttributes([Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    return v1

    :cond_c
    move-object/from16 v17, v1

    move v1, v11

    move v11, v4

    :goto_4
    add-int/lit8 v14, v14, 0x1

    move v4, v11

    move v11, v1

    move-object/from16 v1, v17

    goto/16 :goto_0
.end method

.method private printLocations([Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;)V
    .locals 6

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "JavaBuilder: New locations:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const-string v3, "    "

    if-lt v2, v0, :cond_1

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "JavaBuilder: Old locations:"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    array-length v4, p2

    :goto_1
    if-lt v1, v4, :cond_0

    return-void

    :cond_0
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, p2, v1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->debugPathString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->debugPathString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static readState(Lorg/eclipse/core/resources/IProject;Ljava/io/DataInputStream;)Lorg/eclipse/jdt/internal/core/builder/State;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/builder/State;->read(Lorg/eclipse/core/resources/IProject;Ljava/io/DataInputStream;)Lorg/eclipse/jdt/internal/core/builder/State;

    move-result-object p0

    return-object p0
.end method

.method private recordNewState(Lorg/eclipse/jdt/internal/core/builder/State;)V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->binaryLocationsPerProject:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->keyTable:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JavaBuilder: Recording new state : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->setLastBuiltState(Lorg/eclipse/core/resources/IProject;Ljava/lang/Object;)V

    return-void

    :cond_1
    aget-object v3, v0, v2

    check-cast v3, Lorg/eclipse/core/resources/IProject;

    if-eqz v3, :cond_2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    if-eq v3, v4, :cond_2

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->getLastState(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/internal/core/builder/State;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lorg/eclipse/jdt/internal/core/builder/State;->recordStructuralDependency(Lorg/eclipse/core/resources/IProject;Lorg/eclipse/jdt/internal/core/builder/State;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static removeProblemsAndTasksFor(Lorg/eclipse/core/resources/IResource;)V
    .locals 4

    if-eqz p0, :cond_2

    :try_start_0
    invoke-interface {p0}, Lorg/eclipse/core/resources/IResource;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "org.eclipse.jdt.core.problem"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2, v1}, Lorg/eclipse/core/resources/IResource;->deleteMarkers(Ljava/lang/String;ZI)V

    const-string v0, "org.eclipse.jdt.core.task"

    invoke-interface {p0, v0, v2, v1}, Lorg/eclipse/core/resources/IResource;->deleteMarkers(Ljava/lang/String;ZI)V

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->compilationParticipants:Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;->managedMarkerTypes()Ljava/util/HashSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p0, v3, v2, v1}, Lorg/eclipse/core/resources/IResource;->deleteMarkers(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method

.method public static removeProblemsFor(Lorg/eclipse/core/resources/IResource;)V
    .locals 4

    if-eqz p0, :cond_2

    :try_start_0
    invoke-interface {p0}, Lorg/eclipse/core/resources/IResource;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "org.eclipse.jdt.core.problem"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2, v1}, Lorg/eclipse/core/resources/IResource;->deleteMarkers(Ljava/lang/String;ZI)V

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->compilationParticipants:Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;->managedMarkerTypes()Ljava/util/HashSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p0, v3, v2, v1}, Lorg/eclipse/core/resources/IResource;->deleteMarkers(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method

.method public static removeTasksFor(Lorg/eclipse/core/resources/IResource;)V
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lorg/eclipse/core/resources/IResource;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "org.eclipse.jdt.core.task"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-interface {p0, v0, v1, v2}, Lorg/eclipse/core/resources/IResource;->deleteMarkers(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static writeState(Ljava/lang/Object;Ljava/io/DataOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p0, Lorg/eclipse/jdt/internal/core/builder/State;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/builder/State;->write(Ljava/io/DataOutputStream;)V

    return-void
.end method


# virtual methods
.method public build(ILjava/util/Map;Lorg/eclipse/core/runtime/IProgressMonitor;)[Lorg/eclipse/core/resources/IProject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    const/4 v0, 0x0

    if-eqz p2, :cond_1f

    invoke-interface {p2}, Lorg/eclipse/core/resources/IProject;->isAccessible()Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_f

    :cond_0
    sget-boolean p2, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    const-string v1, " @ "

    if-eqz p2, :cond_1

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\nJavaBuilder: Starting build of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v3}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    new-instance p2, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    invoke-direct {p2, p3, v2}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;-><init>(Lorg/eclipse/core/runtime/IProgressMonitor;Lorg/eclipse/core/resources/IProject;)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->begin()V

    const/4 p2, 0x1

    :try_start_0
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->checkCancel()V

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->initializeBuilder(IZ)I

    move-result p1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->isWorthBuilding()Z

    move-result p3

    if-eqz p3, :cond_11

    const/4 p3, 0x6

    if-ne p1, p3, :cond_3

    sget-boolean p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p1, :cond_2

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p3, "JavaBuilder: Performing full build as requested"

    invoke-virtual {p1, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_d

    :catch_0
    move-exception p1

    goto/16 :goto_6

    :catch_1
    move-exception p1

    goto/16 :goto_8

    :catch_2
    move-exception p1

    goto/16 :goto_a

    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->buildAll()V

    goto/16 :goto_2

    :cond_3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->getLastState(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/internal/core/builder/State;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->lastState:Lorg/eclipse/jdt/internal/core/builder/State;

    if-nez p1, :cond_5

    sget-boolean p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p1, :cond_4

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p3, "JavaBuilder: Performing full build since last saved state was not found"

    invoke-virtual {p1, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->buildAll()V

    goto/16 :goto_2

    :cond_5
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->hasClasspathChanged()Z

    move-result p1

    if-eqz p1, :cond_7

    sget-boolean p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p1, :cond_6

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p3, "JavaBuilder: Performing full build since classpath has changed"

    invoke-virtual {p1, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->buildAll()V

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->nameEnvironment:Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    array-length p1, p1

    if-gtz p1, :cond_c

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->testNameEnvironment:Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    array-length p1, p1

    if-lez p1, :cond_8

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->hasStructuralDelta()Z

    move-result p1

    if-eqz p1, :cond_a

    sget-boolean p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p1, :cond_9

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p3, "JavaBuilder: Performing full build since there are structural deltas"

    invoke-virtual {p1, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_9
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->buildAll()V

    goto :goto_2

    :cond_a
    sget-boolean p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p1, :cond_b

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p3, "JavaBuilder: Nothing to build since there are no source folders and no deltas"

    invoke-virtual {p1, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_b
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->lastState:Lorg/eclipse/jdt/internal/core/builder/State;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/builder/State;->tagAsNoopBuild()V

    goto :goto_2

    :cond_c
    :goto_1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->findDeltas()Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    move-result-object p1

    if-nez p1, :cond_e

    sget-boolean p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p1, :cond_d

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p3, "JavaBuilder: Performing full build since deltas are missing after incremental request"

    invoke-virtual {p1, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_d
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->buildAll()V

    goto :goto_2

    :cond_e
    iget p3, p1, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->elementSize:I

    if-lez p3, :cond_f

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->buildDeltas(Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;)V

    goto :goto_2

    :cond_f
    sget-boolean p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p1, :cond_10

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p3, "JavaBuilder: Nothing to build since deltas were empty"

    invoke-virtual {p1, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/eclipse/jdt/internal/core/builder/ImageBuilderInternalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/eclipse/jdt/internal/core/builder/MissingSourceFileException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_10
    :goto_2
    move p1, p2

    goto :goto_3

    :cond_11
    move p1, v0

    :goto_3
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->participants:[Lorg/eclipse/jdt/core/compiler/CompilationParticipant;

    if-nez p3, :cond_12

    move p3, v0

    goto :goto_4

    :cond_12
    array-length p3, p3

    :goto_4
    if-lt v0, p3, :cond_14

    if-nez p1, :cond_13

    :goto_5
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->clearLastState()V

    :cond_13
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->done()V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->cleanup()V

    goto/16 :goto_c

    :cond_14
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->participants:[Lorg/eclipse/jdt/core/compiler/CompilationParticipant;

    aget-object v2, v2, v0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->javaProject:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/core/compiler/CompilationParticipant;->buildFinished(Lorg/eclipse/jdt/core/IJavaProject;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :goto_6
    :try_start_1
    sget-boolean p3, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p3, :cond_15

    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->build_missingSourceFile:Ljava/lang/String;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/core/builder/MissingSourceFileException;->missingSourceFile:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_15
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    invoke-static {p3}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->removeProblemsAndTasksFor(Lorg/eclipse/core/resources/IResource;)V

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    const-string v2, "org.eclipse.jdt.core.problem"

    invoke-interface {p3, v2}, Lorg/eclipse/core/resources/IProject;->createMarker(Ljava/lang/String;)Lorg/eclipse/core/resources/IMarker;

    move-result-object p3

    const-string v2, "message"

    const-string v3, "severity"

    const-string v4, "sourceId"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/eclipse/jdt/internal/core/util/Messages;->build_missingSourceFile:Ljava/lang/String;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/builder/MissingSourceFileException;->missingSourceFile:Ljava/lang/String;

    invoke-static {v3, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "JDT"

    filled-new-array {p1, v3, v4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, v2, p1}, Lorg/eclipse/core/resources/IMarker;->setAttributes([Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->participants:[Lorg/eclipse/jdt/core/compiler/CompilationParticipant;

    if-nez p1, :cond_16

    move p1, v0

    goto :goto_7

    :cond_16
    array-length p1, p1

    :goto_7
    if-lt v0, p1, :cond_17

    goto :goto_5

    :cond_17
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->participants:[Lorg/eclipse/jdt/core/compiler/CompilationParticipant;

    aget-object p3, p3, v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->javaProject:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {p3, v2}, Lorg/eclipse/jdt/core/compiler/CompilationParticipant;->buildFinished(Lorg/eclipse/jdt/core/IJavaProject;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :goto_8
    :try_start_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/builder/ImageBuilderInternalException;->getThrowable()Lorg/eclipse/core/runtime/CoreException;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JavaBuilder handling ImageBuilderInternalException while building: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v3}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/builder/ImageBuilderInternalException;->coreException:Lorg/eclipse/core/runtime/CoreException;

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->createInconsistentBuildMarker(Lorg/eclipse/core/runtime/CoreException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->participants:[Lorg/eclipse/jdt/core/compiler/CompilationParticipant;

    if-nez p1, :cond_18

    move p1, v0

    goto :goto_9

    :cond_18
    array-length p1, p1

    :goto_9
    if-lt v0, p1, :cond_19

    goto/16 :goto_5

    :cond_19
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->participants:[Lorg/eclipse/jdt/core/compiler/CompilationParticipant;

    aget-object p3, p3, v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->javaProject:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {p3, v2}, Lorg/eclipse/jdt/core/compiler/CompilationParticipant;->buildFinished(Lorg/eclipse/jdt/core/IJavaProject;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :goto_a
    :try_start_3
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "JavaBuilder handling CoreException while building: "

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v2}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->createInconsistentBuildMarker(Lorg/eclipse/core/runtime/CoreException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->participants:[Lorg/eclipse/jdt/core/compiler/CompilationParticipant;

    if-nez p1, :cond_1a

    move p1, v0

    goto :goto_b

    :cond_1a
    array-length p1, p1

    :goto_b
    if-lt v0, p1, :cond_1c

    goto/16 :goto_5

    :goto_c
    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->getRequiredProjects(Z)[Lorg/eclipse/core/resources/IProject;

    move-result-object p1

    sget-boolean p2, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p2, :cond_1b

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "JavaBuilder: Finished build of "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1b
    return-object p1

    :cond_1c
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->participants:[Lorg/eclipse/jdt/core/compiler/CompilationParticipant;

    aget-object p3, p3, v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->javaProject:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {p3, v2}, Lorg/eclipse/jdt/core/compiler/CompilationParticipant;->buildFinished(Lorg/eclipse/jdt/core/IJavaProject;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :goto_d
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->participants:[Lorg/eclipse/jdt/core/compiler/CompilationParticipant;

    if-nez p2, :cond_1d

    move p2, v0

    goto :goto_e

    :cond_1d
    array-length p2, p2

    :goto_e
    if-ge v0, p2, :cond_1e

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->participants:[Lorg/eclipse/jdt/core/compiler/CompilationParticipant;

    aget-object p3, p3, v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->javaProject:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {p3, v1}, Lorg/eclipse/jdt/core/compiler/CompilationParticipant;->buildFinished(Lorg/eclipse/jdt/core/IJavaProject;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1e
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->clearLastState()V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->done()V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->cleanup()V

    throw p1

    :cond_1f
    :goto_f
    new-array p1, v0, [Lorg/eclipse/core/resources/IProject;

    return-object p1
.end method

.method public clean(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    const-string v1, " @ "

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\nJavaBuilder: Cleaning "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v3}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    invoke-direct {v0, p1, v2}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;-><init>(Lorg/eclipse/core/runtime/IProgressMonitor;Lorg/eclipse/core/resources/IProject;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->begin()V

    :try_start_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->checkCancel()V

    const/16 p1, 0xf

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->initializeBuilder(IZ)I

    sget-boolean p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p1, :cond_2

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "JavaBuilder: Clearing last state as part of clean : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->lastState:Lorg/eclipse/jdt/internal/core/builder/State;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->clearLastState()V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->removeProblemsAndTasksFor(Lorg/eclipse/core/resources/IResource;)V

    new-instance p1, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;

    sget-object v0, Lorg/eclipse/jdt/internal/core/CompilationGroup;->MAIN:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v2, v0}, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;-><init>(Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;ZLorg/eclipse/jdt/internal/core/CompilationGroup;)V

    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->cleanOutputFolders(Z)V

    new-instance p1, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;

    sget-object v0, Lorg/eclipse/jdt/internal/core/CompilationGroup;->TEST:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    invoke-direct {p1, p0, v2, v0}, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;-><init>(Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;ZLorg/eclipse/jdt/internal/core/CompilationGroup;)V

    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->cleanOutputFolders(Z)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->done()V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->cleanup()V

    goto :goto_3

    :goto_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "JavaBuilder handling CoreException while cleaning: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v2}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->createInconsistentBuildMarker(Lorg/eclipse/core/runtime/CoreException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_3
    sget-boolean p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p1, :cond_3

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "JavaBuilder: Finished cleaning "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v2}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    return-void

    :goto_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->done()V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->cleanup()V

    throw p1

    :cond_4
    :goto_5
    return-void
.end method

.method public filterExtraResource(Lorg/eclipse/core/resources/IResource;)Z
    .locals 9

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->extraResourceFileFilters:[[C

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->extraResourceFileFilters:[[C

    array-length v3, v3

    move v4, v1

    :goto_0
    if-lt v4, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->extraResourceFileFilters:[[C

    aget-object v5, v5, v4

    invoke-static {v5, v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->match([C[CZ)Z

    move-result v5

    if-eqz v5, :cond_1

    return v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->extraResourceFolderFilters:[Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResource;->getProjectRelativePath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v4

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result p1

    if-ne p1, v2, :cond_3

    add-int/lit8 v4, v4, -0x1

    :cond_3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->extraResourceFolderFilters:[Ljava/lang/String;

    array-length p1, p1

    move v5, v1

    :goto_2
    if-lt v5, p1, :cond_4

    goto :goto_5

    :cond_4
    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->extraResourceFolderFilters:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_7

    move v6, v1

    :goto_3
    if-lt v6, v4, :cond_5

    goto :goto_4

    :cond_5
    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->extraResourceFolderFilters:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-interface {v0, v6}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    return v2

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    :goto_5
    return v1
.end method

.method public getLastState(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/internal/core/builder/State;
    .locals 2

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->monitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getLastBuiltState(Lorg/eclipse/core/resources/IProject;Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/builder/State;

    return-object p1
.end method

.method public hasBuildpathErrors()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    const-string v1, "org.eclipse.jdt.core.problem"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lorg/eclipse/core/resources/IProject;->findMarkers(Ljava/lang/String;ZI)[Lorg/eclipse/core/resources/IMarker;

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_0

    return v2

    :cond_0
    aget-object v4, v0, v3

    const-string v5, "categoryId"

    const/4 v6, -0x1

    invoke-interface {v4, v5, v6}, Lorg/eclipse/core/resources/IMarker;->getAttribute(Ljava/lang/String;I)I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public mustPropagateStructuralChanges()V
    .locals 7

    new-instance v6, Ljava/util/LinkedHashSet;

    const/4 v0, 0x3

    invoke-direct {v6, v0}, Ljava/util/LinkedHashSet;-><init>(I)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->javaProject:Lorg/eclipse/jdt/internal/core/JavaProject;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->workspaceRoot:Lorg/eclipse/core/resources/IWorkspaceRoot;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(I)V

    const/4 v5, 0x0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/JavaProject;->updateCycleParticipants(Ljava/util/ArrayList;Ljava/util/LinkedHashSet;Lorg/eclipse/core/resources/IWorkspaceRoot;Ljava/util/HashSet;Ljava/util/Map;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->javaProject:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/core/runtime/IPath;

    if-eq v2, v0, :cond_0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->workspaceRoot:Lorg/eclipse/core/resources/IWorkspaceRoot;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getProject(Ljava/lang/String;)Lorg/eclipse/core/resources/IProject;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->hasBeenBuilt(Lorg/eclipse/core/resources/IProject;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "JavaBuilder: Requesting another build iteration since cycle participant "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has not yet seen some structural changes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->needRebuild()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    if-nez v0, :cond_0

    const-string v0, "JavaBuilder for unknown project"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JavaBuilder for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v1}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
