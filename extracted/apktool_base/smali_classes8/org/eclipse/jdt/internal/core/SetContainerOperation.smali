.class public Lorg/eclipse/jdt/internal/core/SetContainerOperation;
.super Lorg/eclipse/jdt/internal/core/ChangeClasspathOperation;
.source "SourceFile"


# instance fields
.field affectedProjects:[Lorg/eclipse/jdt/core/IJavaProject;

.field containerPath:Lorg/eclipse/core/runtime/IPath;

.field respectiveContainers:[Lorg/eclipse/jdt/core/IClasspathContainer;


# direct methods
.method public constructor <init>(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IJavaProject;[Lorg/eclipse/jdt/core/IClasspathContainer;)V
    .locals 4

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModel()Lorg/eclipse/jdt/internal/core/JavaModel;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IWorkspace;->isTreeLocked()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-direct {p0, v2, v0}, Lorg/eclipse/jdt/internal/core/ChangeClasspathOperation;-><init>([Lorg/eclipse/jdt/core/IJavaElement;Z)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/SetContainerOperation;->containerPath:Lorg/eclipse/core/runtime/IPath;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/SetContainerOperation;->affectedProjects:[Lorg/eclipse/jdt/core/IJavaProject;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/SetContainerOperation;->respectiveContainers:[Lorg/eclipse/jdt/core/IClasspathContainer;

    return-void
.end method

.method private verbose_failure(Lorg/eclipse/core/runtime/CoreException;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CPContainer SET  - FAILED DUE TO EXCEPTION\n\tcontainer path: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SetContainerOperation;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;Ljava/io/PrintStream;)V

    invoke-virtual {p1}, Lorg/eclipse/core/runtime/CoreException;->printStackTrace()V

    return-void
.end method

.method private verbose_set_container()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CPContainer SET  - setting container\n\tcontainer path: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SetContainerOperation;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\tprojects: {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SetContainerOperation;->affectedProjects:[Lorg/eclipse/jdt/core/IJavaProject;

    new-instance v2, Lorg/eclipse/jdt/internal/core/SetContainerOperation$1;

    invoke-direct {v2, p0}, Lorg/eclipse/jdt/internal/core/SetContainerOperation$1;-><init>(Lorg/eclipse/jdt/internal/core/SetContainerOperation;)V

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/compiler/util/Util;->toString([Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/util/Util$Displayable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}\n\tvalues: {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SetContainerOperation;->respectiveContainers:[Lorg/eclipse/jdt/core/IClasspathContainer;

    new-instance v2, Lorg/eclipse/jdt/internal/core/SetContainerOperation$2;

    invoke-direct {v2, p0}, Lorg/eclipse/jdt/internal/core/SetContainerOperation$2;-><init>(Lorg/eclipse/jdt/internal/core/SetContainerOperation;)V

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/compiler/util/Util;->toString([Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/util/Util$Displayable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\t}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method private verbose_set_container_invocation_trace()V
    .locals 2

    const-string v0, "CPContainer SET  - setting container\n\tinvocation stack trace:"

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "<Fake exception>"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    return-void
.end method

.method private verbose_update_project(Lorg/eclipse/jdt/internal/core/JavaProject;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CPContainer SET  - updating affected project due to setting container\n\tproject: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\tcontainer path: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/SetContainerOperation;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public executeOperation()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->checkCanceled()V

    :try_start_0
    const-string v0, ""

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->beginTask(Ljava/lang/String;I)V

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE:Z

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/SetContainerOperation;->verbose_set_container()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :cond_0
    :goto_0
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_ADVANCED:Z

    if-eqz v0, :cond_1

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/SetContainerOperation;->verbose_set_container_invocation_trace()V

    :cond_1
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v3

    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/SetContainerOperation;->containerPath:Lorg/eclipse/core/runtime/IPath;

    iget-object v4, v1, Lorg/eclipse/jdt/internal/core/SetContainerOperation;->affectedProjects:[Lorg/eclipse/jdt/core/IJavaProject;

    iget-object v5, v1, Lorg/eclipse/jdt/internal/core/SetContainerOperation;->respectiveContainers:[Lorg/eclipse/jdt/core/IClasspathContainer;

    invoke-virtual {v3, v0, v4, v5}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerPutIfInitializingWithSameEntries(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IJavaProject;[Lorg/eclipse/jdt/core/IClasspathContainer;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->done()V

    return-void

    :cond_2
    :try_start_1
    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/SetContainerOperation;->affectedProjects:[Lorg/eclipse/jdt/core/IJavaProject;

    array-length v4, v0

    new-array v5, v4, [Lorg/eclipse/jdt/core/IJavaProject;

    const/4 v6, 0x0

    invoke-static {v0, v6, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v6

    move v7, v0

    :goto_1
    const/4 v8, 0x0

    if-lt v0, v4, :cond_14

    if-nez v7, :cond_3

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->done()V

    return-void

    :cond_3
    move v7, v6

    :goto_2
    if-lt v7, v4, :cond_6

    :goto_3
    if-lt v6, v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->done()V

    return-void

    :cond_4
    :try_start_2
    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/SetContainerOperation;->respectiveContainers:[Lorg/eclipse/jdt/core/IClasspathContainer;

    aget-object v0, v0, v6

    if-nez v0, :cond_5

    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/SetContainerOperation;->affectedProjects:[Lorg/eclipse/jdt/core/IJavaProject;

    aget-object v0, v0, v6

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/SetContainerOperation;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v3, v0, v2, v8}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerPut(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IClasspathContainer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    :try_start_3
    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    sub-int v9, v4, v7

    invoke-virtual {v0, v9}, Lorg/eclipse/core/runtime/SubMonitor;->setWorkRemaining(I)Lorg/eclipse/core/runtime/SubMonitor;

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->isCanceled()Z

    move-result v0
    :try_end_3
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_9

    :goto_4
    if-lt v6, v4, :cond_7

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->done()V

    return-void

    :cond_7
    :try_start_4
    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/SetContainerOperation;->respectiveContainers:[Lorg/eclipse/jdt/core/IClasspathContainer;

    aget-object v0, v0, v6

    if-nez v0, :cond_8

    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/SetContainerOperation;->affectedProjects:[Lorg/eclipse/jdt/core/IJavaProject;

    aget-object v0, v0, v6

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/SetContainerOperation;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v3, v0, v2, v8}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerPut(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IClasspathContainer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_9
    :try_start_5
    aget-object v0, v5, v7

    move-object v9, v0

    check-cast v9, Lorg/eclipse/jdt/internal/core/JavaProject;

    if-nez v9, :cond_a

    goto :goto_7

    :cond_a
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_ADVANCED:Z

    if-eqz v0, :cond_b

    invoke-direct {v1, v9}, Lorg/eclipse/jdt/internal/core/SetContainerOperation;->verbose_update_project(Lorg/eclipse/jdt/internal/core/JavaProject;)V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_8

    :cond_b
    :goto_5
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPerProjectInfo()Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->resetResolvedClasspath()Lorg/eclipse/jdt/internal/core/ClasspathChange;

    move-result-object v0

    if-nez v7, :cond_c

    move v10, v2

    goto :goto_6

    :cond_c
    move v10, v6

    :goto_6
    invoke-virtual {v1, v0, v10}, Lorg/eclipse/jdt/internal/core/ChangeClasspathOperation;->classpathChanged(Lorg/eclipse/jdt/internal/core/ClasspathChange;Z)V

    iget-boolean v0, v1, Lorg/eclipse/jdt/internal/core/ChangeClasspathOperation;->canChangeResources:Z
    :try_end_5
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_e

    :try_start_6
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/core/JavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v0

    iget-object v10, v1, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    invoke-virtual {v10, v2}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v10

    invoke-interface {v0, v10}, Lorg/eclipse/core/resources/IProject;->touch(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_6
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_7

    :catch_1
    move-exception v0

    :try_start_7
    const-string v10, " "

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/core/JavaProject;->getElementName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    goto :goto_7

    :cond_d
    throw v0
    :try_end_7
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_e
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :goto_8
    :try_start_8
    sget-boolean v2, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE:Z

    if-nez v2, :cond_f

    sget-boolean v2, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_FAILURE:Z

    if-eqz v2, :cond_10

    :cond_f
    invoke-direct {v1, v0}, Lorg/eclipse/jdt/internal/core/SetContainerOperation;->verbose_failure(Lorg/eclipse/core/runtime/CoreException;)V

    :cond_10
    instance-of v2, v0, Lorg/eclipse/jdt/core/JavaModelException;

    if-eqz v2, :cond_11

    check-cast v0, Lorg/eclipse/jdt/core/JavaModelException;

    throw v0

    :cond_11
    new-instance v2, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {v2, v0}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_9
    if-ge v6, v4, :cond_13

    :try_start_9
    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/SetContainerOperation;->respectiveContainers:[Lorg/eclipse/jdt/core/IClasspathContainer;

    aget-object v2, v2, v6

    if-nez v2, :cond_12

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/SetContainerOperation;->affectedProjects:[Lorg/eclipse/jdt/core/IJavaProject;

    aget-object v2, v2, v6

    iget-object v5, v1, Lorg/eclipse/jdt/internal/core/SetContainerOperation;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v3, v2, v5, v8}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerPut(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IClasspathContainer;)V

    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_13
    throw v0

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->isCanceled()Z

    move-result v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v9, :cond_15

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->done()V

    return-void

    :cond_15
    :try_start_a
    iget-object v9, v1, Lorg/eclipse/jdt/internal/core/SetContainerOperation;->affectedProjects:[Lorg/eclipse/jdt/core/IJavaProject;

    aget-object v9, v9, v0

    check-cast v9, Lorg/eclipse/jdt/internal/core/JavaProject;

    iget-object v10, v1, Lorg/eclipse/jdt/internal/core/SetContainerOperation;->respectiveContainers:[Lorg/eclipse/jdt/core/IClasspathContainer;

    aget-object v10, v10, v0

    if-nez v10, :cond_16

    sget-object v10, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CONTAINER_INITIALIZATION_IN_PROGRESS:Lorg/eclipse/jdt/core/IClasspathContainer;

    :cond_16
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/core/JavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v11

    invoke-static {v11}, Lorg/eclipse/jdt/internal/core/JavaProject;->hasJavaNature(Lorg/eclipse/core/resources/IProject;)Z

    move-result v11

    if-eqz v11, :cond_1d

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/core/JavaProject;->getRawClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v11

    array-length v12, v11

    move v13, v6

    :goto_a
    if-lt v13, v12, :cond_17

    goto :goto_b

    :cond_17
    aget-object v14, v11, v13

    invoke-interface {v14}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v15

    const/4 v2, 0x5

    if-ne v15, v2, :cond_1c

    invoke-interface {v14}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    iget-object v14, v1, Lorg/eclipse/jdt/internal/core/SetContainerOperation;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v2, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/SetContainerOperation;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v3, v9, v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerGet(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathContainer;

    move-result-object v2

    sget-object v11, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CONTAINER_INITIALIZATION_IN_PROGRESS:Lorg/eclipse/jdt/core/IClasspathContainer;

    if-ne v2, v11, :cond_18

    move-object v2, v8

    :cond_18
    if-eqz v2, :cond_19

    iget-object v11, v1, Lorg/eclipse/jdt/internal/core/SetContainerOperation;->respectiveContainers:[Lorg/eclipse/jdt/core/IClasspathContainer;

    aget-object v11, v11, v0

    invoke-virtual {v2, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1a

    :cond_19
    iget-object v11, v1, Lorg/eclipse/jdt/internal/core/SetContainerOperation;->respectiveContainers:[Lorg/eclipse/jdt/core/IClasspathContainer;

    aget-object v11, v11, v0

    if-ne v2, v11, :cond_1b

    :cond_1a
    aput-object v8, v5, v0

    goto :goto_c

    :cond_1b
    add-int/lit8 v7, v7, 0x1

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/SetContainerOperation;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v3, v9, v2, v10}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerPut(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IClasspathContainer;)V

    goto :goto_c

    :cond_1c
    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x1

    goto :goto_a

    :cond_1d
    :goto_b
    aput-object v8, v5, v0

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/SetContainerOperation;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v3, v9, v2, v10}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerPut(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IClasspathContainer;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_c
    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    goto/16 :goto_1

    :goto_d
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->done()V

    throw v0
.end method
