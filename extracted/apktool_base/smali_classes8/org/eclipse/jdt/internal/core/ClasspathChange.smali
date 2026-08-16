.class public Lorg/eclipse/jdt/internal/core/ClasspathChange;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HAS_DELTA:I = 0x1

.field public static final HAS_LIBRARY_CHANGE:I = 0x4

.field public static final HAS_PROJECT_CHANGE:I = 0x2

.field public static final NO_DELTA:I


# instance fields
.field oldOutputLocation:Lorg/eclipse/core/runtime/IPath;

.field oldRawClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

.field oldResolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

.field project:Lorg/eclipse/jdt/internal/core/JavaProject;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaProject;[Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IClasspathEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/ClasspathChange;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/ClasspathChange;->oldRawClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/ClasspathChange;->oldOutputLocation:Lorg/eclipse/core/runtime/IPath;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/ClasspathChange;->oldResolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    return-void
.end method

.method private addClasspathDeltas(Lorg/eclipse/jdt/internal/core/JavaElementDelta;[Lorg/eclipse/jdt/core/IPackageFragmentRoot;I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    aget-object v1, p2, v0

    invoke-virtual {p1, v1, p3}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->changed(Lorg/eclipse/jdt/core/IJavaElement;I)Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    and-int/lit16 v2, p3, 0x80

    if-nez v2, :cond_1

    and-int/lit16 v2, p3, 0x1000

    if-nez v2, :cond_1

    and-int/lit16 v2, p3, 0x2000

    if-eqz v2, :cond_2

    :cond_1
    :try_start_0
    invoke-interface {v1}, Lorg/eclipse/jdt/core/IOpenable;->close()V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private classpathContains([Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/core/IClasspathEntry;)I
    .locals 11

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IClasspathEntry;->getExclusionPatterns()[Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IClasspathEntry;->getInclusionPatterns()[Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    array-length v3, p1

    :goto_0
    move v4, v2

    :goto_1
    if-lt v4, v3, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    aget-object v5, p1, v4

    invoke-interface {v5}, Lorg/eclipse/jdt/core/IClasspathEntry;->getContentKind()I

    move-result v6

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IClasspathEntry;->getContentKind()I

    move-result v7

    if-ne v6, v7, :cond_11

    invoke-interface {v5}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v6

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v7

    if-ne v6, v7, :cond_11

    invoke-interface {v5}, Lorg/eclipse/jdt/core/IClasspathEntry;->isExported()Z

    move-result v6

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IClasspathEntry;->isExported()Z

    move-result v7

    if-ne v6, v7, :cond_11

    invoke-interface {v5}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v6

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IClasspathEntry;->getOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v6

    invoke-interface {v5}, Lorg/eclipse/jdt/core/IClasspathEntry;->getOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v7

    if-nez v6, :cond_2

    if-eqz v7, :cond_3

    goto/16 :goto_6

    :cond_2
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto/16 :goto_6

    :cond_3
    invoke-interface {v5}, Lorg/eclipse/jdt/core/IClasspathEntry;->getInclusionPatterns()[Lorg/eclipse/core/runtime/IPath;

    move-result-object v6

    if-eq v1, v6, :cond_8

    if-nez v1, :cond_4

    goto/16 :goto_6

    :cond_4
    array-length v7, v1

    if-eqz v6, :cond_11

    array-length v8, v6

    if-eq v8, v7, :cond_5

    goto/16 :goto_6

    :cond_5
    move v8, v2

    :goto_2
    if-lt v8, v7, :cond_6

    goto :goto_3

    :cond_6
    aget-object v9, v1, v8

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aget-object v10, v6, v8

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    goto/16 :goto_6

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    invoke-interface {v5}, Lorg/eclipse/jdt/core/IClasspathEntry;->getExclusionPatterns()[Lorg/eclipse/core/runtime/IPath;

    move-result-object v6

    if-eq v0, v6, :cond_d

    if-nez v0, :cond_9

    goto :goto_6

    :cond_9
    array-length v7, v0

    if-eqz v6, :cond_11

    array-length v8, v6

    if-eq v8, v7, :cond_a

    goto :goto_6

    :cond_a
    move v8, v2

    :goto_4
    if-lt v8, v7, :cond_b

    goto :goto_5

    :cond_b
    aget-object v9, v0, v8

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aget-object v10, v6, v8

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    goto :goto_6

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_d
    :goto_5
    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/ClasspathChange;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    const-string v7, "org.eclipse.jdt.core.compiler.annotation.nullanalysis"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    const-string v7, "enabled"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-static {p2}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getRawExternalAnnotationPath(Lorg/eclipse/jdt/core/IClasspathEntry;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getRawExternalAnnotationPath(Lorg/eclipse/jdt/core/IClasspathEntry;)Ljava/lang/String;

    move-result-object v7

    if-eqz v6, :cond_e

    if-eqz v7, :cond_e

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    goto :goto_6

    :cond_e
    if-eq v6, v7, :cond_f

    goto :goto_6

    :cond_f
    move-object v6, p2

    check-cast v6, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->isModular()Z

    move-result v6

    check-cast v5, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->isModular()Z

    move-result v5

    if-eq v6, v5, :cond_10

    goto :goto_6

    :cond_10
    return v4

    :cond_11
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1
.end method

.method private collectAllSubfolders(Lorg/eclipse/core/resources/IFolder;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/core/resources/IFolder;->members()[Lorg/eclipse/core/resources/IResource;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    aget-object v2, p1, v1

    invoke-interface {v2}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    check-cast v2, Lorg/eclipse/core/resources/IFolder;

    invoke-direct {p0, v2, p2}, Lorg/eclipse/jdt/internal/core/ClasspathChange;->collectAllSubfolders(Lorg/eclipse/core/resources/IFolder;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_2
    new-instance p2, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw p2
.end method

.method private determineAffectedPackageFragments(Lorg/eclipse/core/runtime/IPath;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-interface {v1}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/eclipse/core/resources/IWorkspaceRoot;->findMember(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IResource;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    invoke-interface {v1}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    check-cast v1, Lorg/eclipse/core/resources/IFolder;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/ClasspathChange;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/JavaProject;->getExpandedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v2

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    array-length v6, v2

    if-lt v5, v6, :cond_1

    goto :goto_4

    :cond_1
    aget-object v6, v2, v5

    invoke-interface {v6}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v7

    invoke-interface {v6}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v6

    if-eq v6, v3, :cond_4

    invoke-interface {v7, p1}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/ClasspathChange;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    aget-object v8, v2, v5

    invoke-virtual {v6, v8}, Lorg/eclipse/jdt/internal/core/JavaProject;->computePackageFragmentRoots(Lorg/eclipse/jdt/core/IClasspathEntry;)[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v6

    aget-object v6, v6, v4

    check-cast v6, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1, v8}, Lorg/eclipse/jdt/internal/core/ClasspathChange;->collectAllSubfolders(Lorg/eclipse/core/resources/IFolder;Ljava/util/ArrayList;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v7}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v7

    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/eclipse/core/resources/IFolder;

    invoke-interface {v9}, Lorg/eclipse/core/resources/IFolder;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v9

    invoke-interface {v9, v7}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v9

    invoke-interface {v9}, Lorg/eclipse/core/runtime/IPath;->segments()[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object v9

    invoke-static {v9}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    :goto_4
    return-object v0
.end method

.method private getSourceAttachmentDeltaFlag(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;)I
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x1000

    return p1

    :cond_0
    return v0

    :cond_1
    if-nez p2, :cond_2

    const/16 p1, 0x2000

    return p1

    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const/16 p1, 0x3000

    return p1

    :cond_3
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/ClasspathChange;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathChange;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    check-cast p1, Lorg/eclipse/jdt/internal/core/ClasspathChange;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public generateDelta(Lorg/eclipse/jdt/internal/core/JavaElementDelta;Z)I
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v3

    iget-object v4, v3, Lorg/eclipse/jdt/internal/core/JavaModelManager;->deltaState:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    iget-object v5, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/JavaProject;->getElementName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->findJavaProject(Ljava/lang/String;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    return v6

    :cond_0
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->getDeltaProcessor()Lorg/eclipse/jdt/internal/core/DeltaProcessor;

    move-result-object v5

    :try_start_0
    iget-object v7, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPerProjectInfo()Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    move-result-object v7

    iget-object v8, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v8, v7, v6, v2}, Lorg/eclipse/jdt/internal/core/JavaProject;->resolveClasspath(Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;ZZ)V

    monitor-enter v7
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_7

    :try_start_1
    iget-object v8, v7, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->rawClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v9

    iget-object v10, v7, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->outputLocation:Lorg/eclipse/core/runtime/IPath;

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v9, :cond_1

    :try_start_2
    iget-object v7, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/core/JavaProject;->newTemporaryInfo()Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    move-result-object v7

    iget-object v8, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v8, v7, v6, v2}, Lorg/eclipse/jdt/internal/core/JavaProject;->resolveClasspath(Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;ZZ)V

    iget-object v8, v7, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->rawClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v9

    iget-object v10, v7, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->outputLocation:Lorg/eclipse/core/runtime/IPath;
    :try_end_2
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_17

    :cond_1
    :goto_0
    :try_start_3
    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->oldRawClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;
    :try_end_3
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_3 .. :try_end_3} :catch_7

    const/4 v7, 0x5

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v2, :cond_4

    :try_start_4
    iget-object v14, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->oldOutputLocation:Lorg/eclipse/core/runtime/IPath;

    invoke-static {v2, v8, v14, v10}, Lorg/eclipse/jdt/internal/core/JavaProject;->areClasspathsEqual([Lorg/eclipse/jdt/core/IClasspathEntry;[Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    const/high16 v14, 0x20000

    invoke-virtual {v0, v2, v14}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->changed(Lorg/eclipse/jdt/core/IJavaElement;I)Lorg/eclipse/jdt/internal/core/JavaElementDelta;
    :try_end_4
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->oldRawClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    array-length v2, v2

    move v14, v6

    :goto_1
    if-lt v14, v2, :cond_2

    move v2, v13

    goto :goto_3

    :cond_2
    iget-object v15, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->oldRawClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    aget-object v15, v15, v14

    invoke-interface {v15}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v6

    if-ne v6, v7, :cond_3

    invoke-direct {v1, v8, v15}, Lorg/eclipse/jdt/internal/core/ClasspathChange;->classpathContains([Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/core/IClasspathEntry;)I

    move-result v6

    if-ne v6, v11, :cond_3

    iget-object v6, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-interface {v15}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v15

    invoke-virtual {v3, v6, v15, v12}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerPut(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IClasspathContainer;)V
    :try_end_5
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move v6, v13

    goto/16 :goto_17

    :cond_3
    :goto_2
    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x0

    goto :goto_1

    :catch_2
    move-exception v0

    const/4 v6, 0x0

    goto/16 :goto_17

    :cond_4
    const/4 v2, 0x0

    :goto_3
    :try_start_6
    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->oldResolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    if-eqz v3, :cond_5

    iget-object v6, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->oldOutputLocation:Lorg/eclipse/core/runtime/IPath;

    invoke-static {v3, v9, v6, v10}, Lorg/eclipse/jdt/internal/core/JavaProject;->areClasspathsEqual([Lorg/eclipse/jdt/core/IClasspathEntry;[Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;)Z

    move-result v3

    if-eqz v3, :cond_5

    return v2

    :catch_3
    move-exception v0

    move v6, v2

    goto/16 :goto_17

    :cond_5
    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/JavaProject;->close()V

    iget-object v3, v5, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->projectCachesToReset:Ljava/util/Set;

    iget-object v6, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_6 .. :try_end_6} :catch_3

    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->oldResolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    if-nez v3, :cond_6

    return v2

    :cond_6
    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    const/high16 v3, 0x200000

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->changed(Lorg/eclipse/jdt/core/IJavaElement;I)Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v4, v2}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->addForRefresh(Lorg/eclipse/jdt/core/IJavaElement;)V

    iget-object v2, v5, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->oldRoots:Ljava/util/Map;

    if-eqz v2, :cond_7

    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    goto :goto_4

    :cond_7
    move-object v2, v12

    :goto_4
    if-eqz v2, :cond_9

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x0

    :goto_5
    array-length v6, v2

    if-lt v5, v6, :cond_8

    goto :goto_6

    :cond_8
    aget-object v6, v2, v5

    invoke-interface {v6}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v8

    invoke-interface {v3, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_9
    move-object v3, v12

    :goto_6
    array-length v5, v9

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->oldResolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    array-length v6, v2

    move v8, v13

    const/4 v2, 0x0

    :goto_7
    const/4 v14, 0x2

    if-lt v2, v6, :cond_13

    const/4 v6, 0x0

    :goto_8
    if-lt v6, v5, :cond_f

    if-nez v10, :cond_a

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->oldOutputLocation:Lorg/eclipse/core/runtime/IPath;

    if-nez v2, :cond_b

    :cond_a
    if-eqz v10, :cond_e

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->oldOutputLocation:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    :cond_b
    :try_start_7
    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->oldOutputLocation:Lorg/eclipse/core/runtime/IPath;

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/internal/core/ClasspathChange;->determineAffectedPackageFragments(Lorg/eclipse/core/runtime/IPath;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-direct {v1, v10}, Lorg/eclipse/jdt/internal/core/ClasspathChange;->determineAffectedPackageFragments(Lorg/eclipse/core/runtime/IPath;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_c

    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/IPackageFragment;

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IOpenable;->close()V

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->removed(Lorg/eclipse/jdt/core/IJavaElement;)V

    goto :goto_a

    :catch_4
    move-exception v0

    goto :goto_b

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/IPackageFragment;

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IOpenable;->close()V

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->added(Lorg/eclipse/jdt/core/IJavaElement;)V
    :try_end_7
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_9

    :goto_b
    sget-boolean v2, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->VERBOSE:Z

    if-eqz v2, :cond_e

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/JavaModelException;->printStackTrace()V

    :cond_e
    :goto_c
    return v8

    :cond_f
    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->oldResolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    aget-object v3, v9, v6

    invoke-direct {v1, v2, v3}, Lorg/eclipse/jdt/internal/core/ClasspathChange;->classpathContains([Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/core/IClasspathEntry;)I

    move-result v2

    if-ne v2, v11, :cond_12

    aget-object v2, v9, v6

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v2

    if-ne v2, v14, :cond_10

    or-int/lit8 v2, v8, 0x2

    move v8, v2

    goto :goto_d

    :cond_10
    if-ne v2, v13, :cond_11

    or-int/lit8 v8, v8, 0x4

    :cond_11
    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    aget-object v3, v9, v6

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/core/JavaProject;->computePackageFragmentRoots(Lorg/eclipse/jdt/core/IClasspathEntry;)[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v2

    const/16 v3, 0x40

    invoke-direct {v1, v0, v2, v3}, Lorg/eclipse/jdt/internal/core/ClasspathChange;->addClasspathDeltas(Lorg/eclipse/jdt/internal/core/JavaElementDelta;[Lorg/eclipse/jdt/core/IPackageFragmentRoot;I)V

    :cond_12
    :goto_d
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_8

    :cond_13
    iget-object v15, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->oldResolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    aget-object v15, v15, v2

    invoke-direct {v1, v9, v15}, Lorg/eclipse/jdt/internal/core/ClasspathChange;->classpathContains([Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/core/IClasspathEntry;)I

    move-result v15

    if-ne v15, v11, :cond_1b

    iget-object v15, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->oldResolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    aget-object v15, v15, v2

    invoke-interface {v15}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v15

    if-ne v15, v14, :cond_14

    or-int/lit8 v8, v8, 0x2

    const/4 v11, 0x0

    goto/16 :goto_15

    :cond_14
    if-ne v15, v13, :cond_15

    or-int/lit8 v8, v8, 0x4

    :cond_15
    if-eqz v3, :cond_16

    iget-object v14, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->oldResolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    aget-object v14, v14, v2

    invoke-interface {v14}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v14

    invoke-interface {v3, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    if-eqz v14, :cond_16

    new-array v15, v13, [Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    const/16 v16, 0x0

    aput-object v14, v15, v16

    goto :goto_e

    :cond_16
    move-object v15, v12

    :goto_e
    if-nez v15, :cond_1a

    :try_start_8
    new-instance v14, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    invoke-direct {v14}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;-><init>()V

    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15, v7}, Ljava/util/HashSet;-><init>(I)V

    iget-object v7, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/core/JavaProject;->rootID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v7, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;->workingOnOldClasspath:Ljava/lang/ThreadLocal;

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v11}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v7, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    iget-object v11, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->oldResolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    aget-object v18, v11, v2

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v7

    move-object/from16 v19, v14

    move-object/from16 v20, v15

    invoke-virtual/range {v17 .. v24}, Lorg/eclipse/jdt/internal/core/JavaProject;->computePackageFragmentRoots(Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;Ljava/util/HashSet;Lorg/eclipse/jdt/core/IClasspathEntry;ZZLjava/util/Map;)V

    iget-object v7, v4, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->oldRoots:Ljava/util/Map;

    iget-object v11, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->oldResolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    aget-object v11, v11, v2

    invoke-interface {v11}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;

    if-eqz v7, :cond_19

    iget-object v7, v7, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->cache:Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    if-eqz v7, :cond_19

    const/4 v11, 0x0

    :goto_f
    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size()I

    move-result v15

    if-lt v11, v15, :cond_17

    invoke-virtual {v14, v7}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->add(Ljava/lang/Object;)V

    goto :goto_10

    :catchall_0
    move-exception v0

    goto :goto_12

    :catch_5
    const/4 v11, 0x0

    goto :goto_11

    :cond_17
    invoke-virtual {v14, v11}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    invoke-interface {v15}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v15

    invoke-interface {v7}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    goto :goto_10

    :cond_18
    add-int/lit8 v11, v11, 0x1

    const/4 v13, 0x1

    goto :goto_f

    :cond_19
    :goto_10
    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size()I

    move-result v7

    new-array v15, v7, [Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    invoke-virtual {v14, v15}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->copyInto([Ljava/lang/Object;)V
    :try_end_8
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    sget-object v7, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;->workingOnOldClasspath:Ljava/lang/ThreadLocal;

    invoke-virtual {v7, v12}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1a
    const/4 v11, 0x0

    goto :goto_13

    :goto_11
    :try_start_9
    new-array v15, v11, [Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    sget-object v7, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;->workingOnOldClasspath:Ljava/lang/ThreadLocal;

    invoke-virtual {v7, v12}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_13

    :goto_12
    sget-object v2, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;->workingOnOldClasspath:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v12}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v0

    :goto_13
    const/16 v7, 0x80

    invoke-direct {v1, v0, v15, v7}, Lorg/eclipse/jdt/internal/core/ClasspathChange;->addClasspathDeltas(Lorg/eclipse/jdt/internal/core/JavaElementDelta;[Lorg/eclipse/jdt/core/IPackageFragmentRoot;I)V

    goto/16 :goto_15

    :cond_1b
    const/4 v11, 0x0

    iget-object v7, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->oldResolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    aget-object v7, v7, v2

    invoke-interface {v7}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v7

    if-ne v7, v14, :cond_1c

    or-int/lit8 v8, v8, 0x2

    goto :goto_15

    :cond_1c
    if-eq v15, v2, :cond_1d

    iget-object v7, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    iget-object v13, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->oldResolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    aget-object v13, v13, v2

    invoke-virtual {v7, v13}, Lorg/eclipse/jdt/internal/core/JavaProject;->computePackageFragmentRoots(Lorg/eclipse/jdt/core/IClasspathEntry;)[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v7

    const/16 v13, 0x100

    invoke-direct {v1, v0, v7, v13}, Lorg/eclipse/jdt/internal/core/ClasspathChange;->addClasspathDeltas(Lorg/eclipse/jdt/internal/core/JavaElementDelta;[Lorg/eclipse/jdt/core/IPackageFragmentRoot;I)V

    :cond_1d
    aget-object v7, v9, v15

    invoke-interface {v7}, Lorg/eclipse/jdt/core/IClasspathEntry;->getSourceAttachmentPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v7

    iget-object v13, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->oldResolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    aget-object v13, v13, v2

    invoke-interface {v13}, Lorg/eclipse/jdt/core/IClasspathEntry;->getSourceAttachmentPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v13

    invoke-direct {v1, v13, v7}, Lorg/eclipse/jdt/internal/core/ClasspathChange;->getSourceAttachmentDeltaFlag(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;)I

    move-result v7

    iget-object v13, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->oldResolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    aget-object v13, v13, v2

    invoke-interface {v13}, Lorg/eclipse/jdt/core/IClasspathEntry;->getSourceAttachmentRootPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v13

    aget-object v14, v9, v15

    invoke-interface {v14}, Lorg/eclipse/jdt/core/IClasspathEntry;->getSourceAttachmentRootPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v14

    invoke-direct {v1, v13, v14}, Lorg/eclipse/jdt/internal/core/ClasspathChange;->getSourceAttachmentDeltaFlag(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;)I

    move-result v15

    or-int/2addr v7, v15

    if-eqz v7, :cond_1e

    iget-object v13, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    iget-object v14, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->oldResolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    aget-object v14, v14, v2

    invoke-virtual {v13, v14}, Lorg/eclipse/jdt/internal/core/JavaProject;->computePackageFragmentRoots(Lorg/eclipse/jdt/core/IClasspathEntry;)[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v13

    invoke-direct {v1, v0, v13, v7}, Lorg/eclipse/jdt/internal/core/ClasspathChange;->addClasspathDeltas(Lorg/eclipse/jdt/internal/core/JavaElementDelta;[Lorg/eclipse/jdt/core/IPackageFragmentRoot;I)V

    goto :goto_15

    :cond_1e
    if-nez v13, :cond_20

    if-nez v14, :cond_20

    iget-object v7, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    iget-object v13, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->oldResolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    aget-object v13, v13, v2

    invoke-virtual {v7, v13}, Lorg/eclipse/jdt/internal/core/JavaProject;->computePackageFragmentRoots(Lorg/eclipse/jdt/core/IClasspathEntry;)[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v7

    move v13, v11

    :goto_14
    array-length v14, v7

    if-lt v13, v14, :cond_1f

    goto :goto_15

    :cond_1f
    aget-object v14, v7, v13

    :try_start_a
    invoke-interface {v14}, Lorg/eclipse/jdt/core/IOpenable;->close()V
    :try_end_a
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_a .. :try_end_a} :catch_6

    :catch_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_14

    :cond_20
    :goto_15
    add-int/lit8 v2, v2, 0x1

    const/4 v7, 0x5

    const/4 v11, -0x1

    const/4 v13, 0x1

    goto/16 :goto_7

    :catch_7
    move-exception v0

    move v11, v6

    goto :goto_17

    :catchall_1
    move-exception v0

    move v11, v6

    :goto_16
    :try_start_b
    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v0
    :try_end_c
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_c .. :try_end_c} :catch_8

    :catch_8
    move-exception v0

    move v6, v11

    goto :goto_17

    :catchall_2
    move-exception v0

    goto :goto_16

    :goto_17
    sget-boolean v2, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->VERBOSE:Z

    if-eqz v2, :cond_21

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/JavaModelException;->printStackTrace()V

    :cond_21
    return v6
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathChange;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->hashCode()I

    move-result v0

    return v0
.end method

.method public requestIndexing()V
    .locals 15

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathChange;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v1

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->indexManager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->deltaState:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    array-length v3, v0

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/ClasspathChange;->oldResolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    array-length v4, v4

    :goto_0
    move v6, v5

    :goto_1
    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, -0x1

    const/4 v10, 0x1

    if-lt v6, v4, :cond_d

    move v11, v5

    :goto_2
    if-lt v11, v3, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ClasspathChange;->oldResolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    aget-object v6, v0, v11

    invoke-direct {p0, v1, v6}, Lorg/eclipse/jdt/internal/core/ClasspathChange;->classpathContains([Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/core/IClasspathEntry;)I

    move-result v1

    if-eq v1, v9, :cond_3

    aget-object v1, v0, v11

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v1

    if-ne v1, v10, :cond_b

    :cond_3
    aget-object v1, v0, v11

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v1

    if-ne v1, v8, :cond_4

    goto/16 :goto_6

    :cond_4
    aget-object v1, v0, v11

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v1

    aget-object v6, v0, v11

    check-cast v6, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getLibraryIndexLocation()Ljava/net/URL;

    move-result-object v12

    if-eq v1, v10, :cond_6

    if-eq v1, v7, :cond_5

    goto :goto_6

    :cond_5
    aget-object v1, v0, v11

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v6

    check-cast v1, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->fullInclusionPatternChars()[[C

    move-result-object v12

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->fullExclusionPatternChars()[[C

    move-result-object v1

    iget-object v13, p0, Lorg/eclipse/jdt/internal/core/ClasspathChange;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v2, v13, v6, v12, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexSourceFolder(Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/core/runtime/IPath;[[C[[C)V

    goto :goto_6

    :cond_6
    aget-object v1, v0, v11

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v13

    move v1, v5

    :goto_3
    if-lt v1, v4, :cond_7

    goto :goto_4

    :cond_7
    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/ClasspathChange;->oldResolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    aget-object v6, v6, v1

    invoke-interface {v6}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    check-cast v6, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getLibraryIndexLocation()Ljava/net/URL;

    move-result-object v1

    if-nez v1, :cond_8

    if-nez v12, :cond_8

    move v1, v5

    goto :goto_5

    :cond_8
    if-eqz v1, :cond_9

    if-eqz v12, :cond_9

    invoke-virtual {v12, v1}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v10

    goto :goto_5

    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {v2, v13}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->removeIndex(Lorg/eclipse/core/runtime/IPath;)V

    :cond_a
    :goto_4
    move v1, v10

    :goto_5
    if-eqz v1, :cond_b

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ClasspathChange;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v1

    invoke-virtual {v2, v13, v1, v12}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexLibrary(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/resources/IProject;Ljava/net/URL;)V

    :cond_b
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_d
    iget-object v11, p0, Lorg/eclipse/jdt/internal/core/ClasspathChange;->oldResolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    aget-object v11, v11, v6

    invoke-direct {p0, v0, v11}, Lorg/eclipse/jdt/internal/core/ClasspathChange;->classpathContains([Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/core/IClasspathEntry;)I

    move-result v11

    if-ne v11, v9, :cond_11

    iget-object v9, p0, Lorg/eclipse/jdt/internal/core/ClasspathChange;->oldResolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    aget-object v9, v9, v6

    invoke-interface {v9}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v9

    if-ne v9, v8, :cond_e

    goto :goto_7

    :cond_e
    iget-object v8, p0, Lorg/eclipse/jdt/internal/core/ClasspathChange;->oldResolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    aget-object v8, v8, v6

    invoke-interface {v8}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v9

    iget-object v11, p0, Lorg/eclipse/jdt/internal/core/ClasspathChange;->oldResolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    aget-object v11, v11, v6

    invoke-interface {v11}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v11

    if-eq v11, v10, :cond_10

    if-eq v11, v7, :cond_f

    goto :goto_7

    :cond_f
    check-cast v8, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->fullInclusionPatternChars()[[C

    move-result-object v7

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->fullExclusionPatternChars()[[C

    move-result-object v8

    iget-object v10, p0, Lorg/eclipse/jdt/internal/core/ClasspathChange;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v2, v10, v9, v7, v8}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->removeSourceFolderFromIndex(Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/core/runtime/IPath;[[C[[C)V

    goto :goto_7

    :cond_10
    iget-object v7, v1, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->otherRoots:Ljava/util/Map;

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_11

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->discardJobs(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->removeIndex(Lorg/eclipse/core/runtime/IPath;)V

    :cond_11
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :catch_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClasspathChange: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ClasspathChange;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
