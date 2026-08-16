.class public Lorg/eclipse/jdt/internal/core/SetVariablesOperation;
.super Lorg/eclipse/jdt/internal/core/ChangeClasspathOperation;
.source "SourceFile"


# instance fields
.field updatePreferences:Z

.field variableNames:[Ljava/lang/String;

.field variablePaths:[Lorg/eclipse/core/runtime/IPath;


# direct methods
.method public constructor <init>([Ljava/lang/String;[Lorg/eclipse/core/runtime/IPath;Z)V
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

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/SetVariablesOperation;->variableNames:[Ljava/lang/String;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/SetVariablesOperation;->variablePaths:[Lorg/eclipse/core/runtime/IPath;

    iput-boolean p3, p0, Lorg/eclipse/jdt/internal/core/SetVariablesOperation;->updatePreferences:Z

    return-void
.end method

.method private verbose_failure([Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CPVariable SET  - FAILED DUE TO EXCEPTION\n\tvariables: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;Ljava/io/PrintStream;)V

    return-void
.end method

.method private verbose_set_variables()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CPVariable SET  - setting variables\n\tvariables: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SetVariablesOperation;->variableNames:[Ljava/lang/String;

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\tvalues: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SetVariablesOperation;->variablePaths:[Lorg/eclipse/core/runtime/IPath;

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method private verbose_update_project([Ljava/lang/String;Lorg/eclipse/jdt/internal/core/JavaProject;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CPVariable SET  - updating affected project due to setting variables\n\tproject: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/JavaProject;->getElementName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "\tvariables: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/SetVariablesOperation;->verbose_set_variables()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :cond_0
    :goto_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/SetVariablesOperation;->variableNames:[Ljava/lang/String;

    iget-object v4, v1, Lorg/eclipse/jdt/internal/core/SetVariablesOperation;->variablePaths:[Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v0, v3, v4}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->variablePutIfInitializingWithSameValue([Ljava/lang/String;[Lorg/eclipse/core/runtime/IPath;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->done()V

    return-void

    :cond_1
    :try_start_1
    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/SetVariablesOperation;->variableNames:[Ljava/lang/String;

    array-length v3, v3

    new-instance v4, Ljava/util/HashMap;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getJavaModel()Lorg/eclipse/jdt/core/IJavaModel;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-lt v7, v3, :cond_19

    if-lez v8, :cond_5

    if-ne v8, v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->done()V

    return-void

    :cond_2
    sub-int v7, v3, v8

    :try_start_2
    new-array v8, v7, [Ljava/lang/String;

    new-array v9, v7, [Lorg/eclipse/core/runtime/IPath;

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_2
    if-lt v10, v3, :cond_3

    iput-object v8, v1, Lorg/eclipse/jdt/internal/core/SetVariablesOperation;->variableNames:[Ljava/lang/String;

    iput-object v9, v1, Lorg/eclipse/jdt/internal/core/SetVariablesOperation;->variablePaths:[Lorg/eclipse/core/runtime/IPath;

    move v3, v7

    goto :goto_3

    :cond_3
    iget-object v12, v1, Lorg/eclipse/jdt/internal/core/SetVariablesOperation;->variableNames:[Ljava/lang/String;

    aget-object v12, v12, v10

    if-eqz v12, :cond_4

    aput-object v12, v8, v11

    iget-object v12, v1, Lorg/eclipse/jdt/internal/core/SetVariablesOperation;->variablePaths:[Lorg/eclipse/core/runtime/IPath;

    aget-object v12, v12, v10

    aput-object v12, v9, v11

    add-int/lit8 v11, v11, 0x1

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->isCanceled()Z

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->done()V

    return-void

    :cond_6
    :try_start_3
    invoke-interface {v5}, Lorg/eclipse/jdt/core/IJavaModel;->getJavaProjects()[Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v5

    array-length v7, v5

    const/4 v8, 0x0

    :goto_4
    if-lt v8, v7, :cond_11

    const/4 v6, 0x0

    :goto_5
    if-lt v6, v3, :cond_f

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/SetVariablesOperation;->variableNames:[Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_8

    :cond_8
    iget-object v4, v1, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lorg/eclipse/core/runtime/SubMonitor;->isCanceled()Z

    move-result v4
    :try_end_4
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->done()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_7

    :cond_9
    :try_start_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/core/JavaProject;

    sget-boolean v5, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_ADVANCED:Z

    if-eqz v5, :cond_a

    invoke-direct {v1, v3, v4}, Lorg/eclipse/jdt/internal/core/SetVariablesOperation;->verbose_update_project([Ljava/lang/String;Lorg/eclipse/jdt/internal/core/JavaProject;)V

    :cond_a
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPerProjectInfo()Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->resetResolvedClasspath()Lorg/eclipse/jdt/internal/core/ClasspathChange;

    move-result-object v5

    invoke-virtual {v1, v5, v2}, Lorg/eclipse/jdt/internal/core/ChangeClasspathOperation;->classpathChanged(Lorg/eclipse/jdt/internal/core/ClasspathChange;Z)V

    iget-boolean v5, v1, Lorg/eclipse/jdt/internal/core/ChangeClasspathOperation;->canChangeResources:Z

    if-eqz v5, :cond_7

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/JavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v4

    iget-object v5, v1, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    invoke-interface {v4, v5}, Lorg/eclipse/core/resources/IProject;->touch(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_5
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    :goto_7
    :try_start_6
    sget-boolean v2, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE:Z

    if-nez v2, :cond_b

    sget-boolean v2, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_FAILURE:Z

    if-eqz v2, :cond_c

    :cond_b
    invoke-direct {v1, v3}, Lorg/eclipse/jdt/internal/core/SetVariablesOperation;->verbose_failure([Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/eclipse/core/runtime/CoreException;->printStackTrace()V

    :cond_c
    instance-of v2, v0, Lorg/eclipse/jdt/core/JavaModelException;

    if-eqz v2, :cond_d

    check-cast v0, Lorg/eclipse/jdt/core/JavaModelException;

    throw v0

    :cond_d
    new-instance v2, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {v2, v0}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_e
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->done()V

    return-void

    :cond_f
    :try_start_7
    iget-object v5, v1, Lorg/eclipse/jdt/internal/core/SetVariablesOperation;->variableNames:[Ljava/lang/String;

    aget-object v5, v5, v6

    iget-object v7, v1, Lorg/eclipse/jdt/internal/core/SetVariablesOperation;->variablePaths:[Lorg/eclipse/core/runtime/IPath;

    aget-object v7, v7, v6

    invoke-virtual {v0, v5, v7}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->variablePut(Ljava/lang/String;Lorg/eclipse/core/runtime/IPath;)V

    iget-boolean v5, v1, Lorg/eclipse/jdt/internal/core/SetVariablesOperation;->updatePreferences:Z

    if-eqz v5, :cond_10

    iget-object v5, v1, Lorg/eclipse/jdt/internal/core/SetVariablesOperation;->variableNames:[Ljava/lang/String;

    aget-object v5, v5, v6

    iget-object v7, v1, Lorg/eclipse/jdt/internal/core/SetVariablesOperation;->variablePaths:[Lorg/eclipse/core/runtime/IPath;

    aget-object v7, v7, v6

    invoke-virtual {v0, v5, v7}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->variablePreferencesPut(Ljava/lang/String;Lorg/eclipse/core/runtime/IPath;)V

    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    :cond_11
    aget-object v9, v5, v8

    check-cast v9, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/core/JavaProject;->getRawClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x0

    :goto_9
    if-lt v12, v11, :cond_12

    :goto_a
    const/4 v6, 0x0

    goto :goto_e

    :cond_12
    aget-object v13, v10, v12

    const/4 v14, 0x0

    :goto_b
    if-lt v14, v3, :cond_13

    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_13
    iget-object v15, v1, Lorg/eclipse/jdt/internal/core/SetVariablesOperation;->variableNames:[Ljava/lang/String;

    aget-object v15, v15, v14

    invoke-interface {v13}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v2

    const/4 v6, 0x4

    if-ne v2, v6, :cond_17

    invoke-interface {v13}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/core/JavaProject;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v2

    invoke-virtual {v4, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_14
    invoke-interface {v13}, Lorg/eclipse/jdt/core/IClasspathEntry;->getSourceAttachmentPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    if-eqz v2, :cond_16

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_c

    :cond_15
    const/4 v6, 0x0

    goto :goto_d

    :cond_16
    :goto_c
    invoke-interface {v13}, Lorg/eclipse/jdt/core/IClasspathEntry;->getSourceAttachmentRootPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    if-eqz v2, :cond_17

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    :goto_d
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/core/JavaProject;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v2

    invoke-virtual {v4, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_e
    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x1

    goto/16 :goto_4

    :cond_17
    const/4 v6, 0x0

    :cond_18
    add-int/lit8 v14, v14, 0x1

    const/4 v2, 0x1

    goto :goto_b

    :cond_19
    const/4 v6, 0x0

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/SetVariablesOperation;->variableNames:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->variableGet(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    sget-object v9, Lorg/eclipse/jdt/internal/core/JavaModelManager;->VARIABLE_INITIALIZATION_IN_PROGRESS:Lorg/eclipse/core/runtime/IPath;

    const/4 v10, 0x0

    if-ne v2, v9, :cond_1a

    move-object v2, v10

    :cond_1a
    if-eqz v2, :cond_1b

    iget-object v9, v1, Lorg/eclipse/jdt/internal/core/SetVariablesOperation;->variablePaths:[Lorg/eclipse/core/runtime/IPath;

    aget-object v9, v9, v7

    invoke-virtual {v2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/SetVariablesOperation;->variableNames:[Ljava/lang/String;

    aput-object v10, v2, v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    add-int/lit8 v8, v8, 0x1

    :cond_1b
    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x1

    goto/16 :goto_1

    :goto_f
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->done()V

    throw v0
.end method
