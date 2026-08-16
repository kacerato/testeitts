.class public Lorg/eclipse/jdt/internal/core/DeltaProcessingState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/core/resources/IResourceChangeListener;
.implements Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/DeltaProcessingState$RootInfos;
    }
.end annotation


# instance fields
.field private classpathChanges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/core/resources/IProject;",
            "Lorg/eclipse/jdt/internal/core/ClasspathChange;",
            ">;"
        }
    .end annotation
.end field

.field private classpathValidations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/internal/core/JavaProject;",
            "Lorg/eclipse/jdt/internal/core/ClasspathValidation;",
            ">;"
        }
    .end annotation
.end field

.field private deltaProcessors:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/eclipse/jdt/internal/core/DeltaProcessor;",
            ">;"
        }
    .end annotation
.end field

.field public elementChangedListenerCount:I

.field public elementChangedListenerMasks:[I

.field public elementChangedListeners:[Lorg/eclipse/jdt/core/IElementChangedListener;

.field private externalElementsToRefresh:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/core/IJavaElement;",
            ">;"
        }
    .end annotation
.end field

.field private externalFolderChanges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/internal/core/JavaProject;",
            "Lorg/eclipse/jdt/internal/core/ExternalFolderChange;",
            ">;"
        }
    .end annotation
.end field

.field public externalTimeStamps:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Lorg/eclipse/core/runtime/IPath;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private initializingThreads:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private javaProjectNamesCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public oldOtherRoots:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/core/runtime/IPath;",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public oldRoots:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/core/runtime/IPath;",
            "Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;",
            ">;"
        }
    .end annotation
.end field

.field public otherRoots:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/core/runtime/IPath;",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public preResourceChangeEventMasks:[I

.field public preResourceChangeListenerCount:I

.field public preResourceChangeListeners:[Lorg/eclipse/core/resources/IResourceChangeListener;

.field public projectDependencies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/core/IJavaProject;",
            "[",
            "Lorg/eclipse/jdt/core/IJavaProject;",
            ">;"
        }
    .end annotation
.end field

.field private projectReferenceChanges:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/core/IJavaProject;",
            ">;"
        }
    .end annotation
.end field

.field public roots:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/core/runtime/IPath;",
            "Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;",
            ">;"
        }
    .end annotation
.end field

.field public rootsAreStale:Z

.field public sourceAttachments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/core/runtime/IPath;",
            "Lorg/eclipse/core/runtime/IPath;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v1, v0, [Lorg/eclipse/jdt/core/IElementChangedListener;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->elementChangedListeners:[Lorg/eclipse/jdt/core/IElementChangedListener;

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->elementChangedListenerMasks:[I

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->elementChangedListenerCount:I

    const/4 v1, 0x1

    new-array v2, v1, [Lorg/eclipse/core/resources/IResourceChangeListener;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->preResourceChangeListeners:[Lorg/eclipse/core/resources/IResourceChangeListener;

    new-array v2, v1, [I

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->preResourceChangeEventMasks:[I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->preResourceChangeListenerCount:I

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->deltaProcessors:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->roots:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->otherRoots:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->oldRoots:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->oldOtherRoots:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->sourceAttachments:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->projectDependencies:Ljava/util/Map;

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->rootsAreStale:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->initializingThreads:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->classpathChanges:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->classpathValidations:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->projectReferenceChanges:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->externalFolderChanges:Ljava/util/Map;

    return-void
.end method

.method private getRootInfos(Z)Lorg/eclipse/jdt/internal/core/DeltaProcessingState$RootInfos;
    .locals 22

    new-instance v1, Lorg/eclipse/jdt/internal/core/DeltaProcessingState$RootInfos;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState$RootInfos;-><init>()V

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModel()Lorg/eclipse/jdt/internal/core/JavaModel;

    move-result-object v2

    :try_start_0
    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaModel;->getJavaProjects()[Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v4
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_2

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-lt v7, v5, :cond_0

    return-object v1

    :cond_0
    aget-object v0, v4, v7

    move-object v14, v0

    check-cast v14, Lorg/eclipse/jdt/internal/core/JavaProject;

    const/4 v15, 0x1

    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPerProjectInfo()Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    move-result-object v0

    invoke-virtual {v14, v0, v15, v6}, Lorg/eclipse/jdt/internal/core/JavaProject;->resolveClasspath(Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;ZZ)V

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->resolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    :goto_1
    move-object v13, v0

    goto :goto_2

    :cond_1
    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/core/JavaProject;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :goto_2
    array-length v12, v13

    move v11, v6

    :goto_3
    if-lt v11, v12, :cond_2

    goto/16 :goto_9

    :cond_2
    aget-object v16, v13, v11

    invoke-interface/range {v16 .. v16}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v0

    const/4 v8, 0x2

    if-ne v0, v8, :cond_4

    invoke-interface/range {v16 .. v16}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {v0, v6}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/eclipse/jdt/core/IJavaModel;->getJavaProject(Ljava/lang/String;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    iget-object v8, v1, Lorg/eclipse/jdt/internal/core/DeltaProcessingState$RootInfos;->projectDependencies:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lorg/eclipse/jdt/core/IJavaProject;

    if-nez v8, :cond_3

    new-array v8, v15, [Lorg/eclipse/jdt/core/IJavaProject;

    aput-object v14, v8, v6

    goto :goto_4

    :cond_3
    array-length v9, v8

    add-int/lit8 v10, v9, 0x1

    new-array v10, v10, [Lorg/eclipse/jdt/core/IJavaProject;

    invoke-static {v8, v6, v10, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v14, v10, v9

    move-object v8, v10

    :goto_4
    iget-object v9, v1, Lorg/eclipse/jdt/internal/core/DeltaProcessingState$RootInfos;->projectDependencies:Ljava/util/Map;

    invoke-interface {v9, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v21, v11

    move/from16 v17, v12

    move-object/from16 v18, v13

    goto/16 :goto_8

    :cond_4
    invoke-interface/range {v16 .. v16}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v10

    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/DeltaProcessingState$RootInfos;->roots:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/DeltaProcessingState$RootInfos;->roots:Ljava/util/Map;

    new-instance v9, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;

    move-object/from16 v8, v16

    check-cast v8, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->fullInclusionPatternChars()[[C

    move-result-object v17

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->fullExclusionPatternChars()[[C

    move-result-object v18

    invoke-interface/range {v16 .. v16}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v19

    move-object v8, v9

    move-object v3, v9

    move-object v9, v14

    move-object/from16 v20, v10

    move/from16 v21, v11

    move-object/from16 v11, v17

    move/from16 v17, v12

    move-object/from16 v12, v18

    move-object/from16 v18, v13

    move/from16 v13, v19

    invoke-direct/range {v8 .. v13}, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;-><init>(Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/core/runtime/IPath;[[C[[CI)V

    move-object/from16 v13, v20

    invoke-interface {v0, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_5
    move/from16 v21, v11

    move/from16 v17, v12

    move-object/from16 v18, v13

    move-object v13, v10

    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/DeltaProcessingState$RootInfos;->otherRoots:Ljava/util/Map;

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/DeltaProcessingState$RootInfos;->otherRoots:Ljava/util/Map;

    invoke-interface {v3, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    new-instance v3, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;

    move-object/from16 v8, v16

    check-cast v8, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->fullInclusionPatternChars()[[C

    move-result-object v11

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->fullExclusionPatternChars()[[C

    move-result-object v12

    invoke-interface/range {v16 .. v16}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v19

    move-object v8, v3

    move-object v9, v14

    move-object v10, v13

    move-object/from16 v20, v13

    move/from16 v13, v19

    invoke-direct/range {v8 .. v13}, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;-><init>(Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/core/runtime/IPath;[[C[[CI)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    invoke-interface/range {v16 .. v16}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v0

    if-eq v0, v15, :cond_7

    goto :goto_8

    :cond_7
    :try_start_2
    invoke-static/range {v20 .. v20}, Lorg/eclipse/jdt/internal/core/util/Util;->getSourceAttachmentProperty(Lorg/eclipse/core/runtime/IPath;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v3, v0

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/JavaModelException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_9

    const/16 v3, 0x2a

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-gez v3, :cond_8

    new-instance v3, Lorg/eclipse/core/runtime/Path;

    invoke-direct {v3, v0}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :cond_8
    new-instance v8, Lorg/eclipse/core/runtime/Path;

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    move-object v3, v8

    goto :goto_7

    :cond_9
    invoke-interface/range {v16 .. v16}, Lorg/eclipse/jdt/core/IClasspathEntry;->getSourceAttachmentPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    :goto_7
    if-eqz v3, :cond_a

    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/DeltaProcessingState$RootInfos;->sourceAttachments:Ljava/util/Map;

    move-object/from16 v8, v20

    invoke-interface {v0, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_8
    add-int/lit8 v11, v21, 0x1

    move/from16 v12, v17

    move-object/from16 v13, v18

    goto/16 :goto_3

    :catch_1
    :goto_9
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :catch_2
    const/4 v3, 0x0

    return-object v3
.end method

.method private getTimeStampsFile()Ljava/io/File;
    .locals 2

    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getPlugin()Lorg/eclipse/core/runtime/Plugin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/core/runtime/Plugin;->getStateLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    const-string v1, "externalLibsTimeStamps"

    invoke-interface {v0, v1}, Lorg/eclipse/core/runtime/IPath;->append(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->toFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addClasspathChange(Lorg/eclipse/core/resources/IProject;[Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IClasspathEntry;)Lorg/eclipse/jdt/internal/core/ClasspathChange;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->classpathChanges:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->classpathChanges:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;

    if-nez v1, :cond_0

    new-instance v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModel()Lorg/eclipse/jdt/internal/core/JavaModel;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/core/JavaModel;->getJavaProject(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-direct {v1, v2, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/ClasspathChange;-><init>(Lorg/eclipse/jdt/internal/core/JavaProject;[Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IClasspathEntry;)V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->classpathChanges:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object p1, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->oldRawClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    if-nez p1, :cond_1

    iput-object p2, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->oldRawClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    :cond_1
    iget-object p1, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->oldOutputLocation:Lorg/eclipse/core/runtime/IPath;

    if-nez p1, :cond_2

    iput-object p3, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->oldOutputLocation:Lorg/eclipse/core/runtime/IPath;

    :cond_2
    iget-object p1, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->oldResolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    if-nez p1, :cond_3

    iput-object p4, v1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->oldResolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    :cond_3
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized addClasspathValidation(Lorg/eclipse/jdt/internal/core/JavaProject;)Lorg/eclipse/jdt/internal/core/ClasspathValidation;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->classpathValidations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/ClasspathValidation;

    if-nez v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/core/ClasspathValidation;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/core/ClasspathValidation;-><init>(Lorg/eclipse/jdt/internal/core/JavaProject;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->classpathValidations:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized addElementChangedListener(Lorg/eclipse/jdt/core/IElementChangedListener;I)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget v2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->elementChangedListenerCount:I

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->elementChangedListeners:[Lorg/eclipse/jdt/core/IElementChangedListener;

    array-length v3, v1

    if-ne v3, v2, :cond_0

    mul-int/lit8 v2, v3, 0x2

    new-array v4, v2, [Lorg/eclipse/jdt/core/IElementChangedListener;

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->elementChangedListeners:[Lorg/eclipse/jdt/core/IElementChangedListener;

    invoke-static {v1, v0, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->elementChangedListenerMasks:[I

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->elementChangedListenerMasks:[I

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->elementChangedListeners:[Lorg/eclipse/jdt/core/IElementChangedListener;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->elementChangedListenerCount:I

    aput-object p1, v0, v1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->elementChangedListenerMasks:[I

    aput p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->elementChangedListenerCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->elementChangedListeners:[Lorg/eclipse/jdt/core/IElementChangedListener;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->elementChangedListenerMasks:[I

    array-length v2, p1

    new-array v3, v2, [I

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->elementChangedListenerMasks:[I

    invoke-static {p1, v0, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->elementChangedListenerMasks:[I

    aget v0, p1, v1

    or-int/2addr p2, v0

    aput p2, p1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized addExternalFolderChange(Lorg/eclipse/jdt/internal/core/JavaProject;[Lorg/eclipse/jdt/core/IClasspathEntry;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->externalFolderChanges:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/ExternalFolderChange;

    if-nez v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/core/ExternalFolderChange;

    invoke-direct {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/ExternalFolderChange;-><init>(Lorg/eclipse/jdt/internal/core/JavaProject;[Lorg/eclipse/jdt/core/IClasspathEntry;)V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->externalFolderChanges:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized addForRefresh(Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->externalElementsToRefresh:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->externalElementsToRefresh:Ljava/util/Set;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->externalElementsToRefresh:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized addPreResourceChangedListener(Lorg/eclipse/core/resources/IResourceChangeListener;I)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget v2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->preResourceChangeListenerCount:I

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->preResourceChangeListeners:[Lorg/eclipse/core/resources/IResourceChangeListener;

    array-length v3, v1

    if-ne v3, v2, :cond_0

    mul-int/lit8 v2, v3, 0x2

    new-array v4, v2, [Lorg/eclipse/core/resources/IResourceChangeListener;

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->preResourceChangeListeners:[Lorg/eclipse/core/resources/IResourceChangeListener;

    invoke-static {v1, v0, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->preResourceChangeEventMasks:[I

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->preResourceChangeEventMasks:[I

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->preResourceChangeListeners:[Lorg/eclipse/core/resources/IResourceChangeListener;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->preResourceChangeListenerCount:I

    aput-object p1, v0, v1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->preResourceChangeEventMasks:[I

    aput p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->preResourceChangeListenerCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->preResourceChangeListeners:[Lorg/eclipse/core/resources/IResourceChangeListener;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->preResourceChangeEventMasks:[I

    aget v0, p1, v1

    or-int/2addr p2, v0

    aput p2, p1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized addProjectReferenceChange(Lorg/eclipse/jdt/core/IJavaProject;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->projectReferenceChanges:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public consume(Lorg/eclipse/jdt/internal/core/nd/indexer/IndexerEvent;)V
    .locals 2

    invoke-static {}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->getDeltaProcessor()Lorg/eclipse/jdt/internal/core/DeltaProcessor;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexerEvent;->getDelta()Lorg/eclipse/jdt/core/IJavaElementDelta;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    const/4 v1, 0x1

    iput-boolean v1, p1, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->ignoreFromTests:Z

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->notifyAndFire(Lorg/eclipse/jdt/core/IJavaElementDelta;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->deltaProcessors:Ljava/lang/ThreadLocal;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public doNotUse()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->deltaProcessors:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public findJavaProject(Ljava/lang/String;)Lorg/eclipse/jdt/core/IJavaProject;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->getOldJavaProjecNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModel()Lorg/eclipse/jdt/internal/core/JavaModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaModel;->getJavaProject(Ljava/lang/String;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getClasspathChange(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/internal/core/ClasspathChange;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->classpathChanges:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->classpathChanges:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/ClasspathChange;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getDeltaProcessor()Lorg/eclipse/jdt/internal/core/DeltaProcessor;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->deltaProcessors:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;-><init>(Lorg/eclipse/jdt/internal/core/DeltaProcessingState;Lorg/eclipse/jdt/internal/core/JavaModelManager;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->deltaProcessors:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getExternalLibTimeStamps()Ljava/util/Hashtable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Lorg/eclipse/core/runtime/IPath;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->externalTimeStamps:Ljava/util/Hashtable;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->getTimeStampsFile()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-gtz v2, :cond_0

    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :cond_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v5

    invoke-static {v2}, Lorg/eclipse/core/runtime/Path;->fromPortableString(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v2, v4

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v3

    goto :goto_4

    :catch_0
    move-exception v2

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v3

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Unable to read external time stamps"

    invoke-static {v2, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    if-eqz v3, :cond_2

    goto :goto_1

    :catch_2
    :cond_2
    :goto_3
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->externalTimeStamps:Ljava/util/Hashtable;

    goto :goto_5

    :goto_4
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :cond_3
    throw v0

    :cond_4
    :goto_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->externalTimeStamps:Ljava/util/Hashtable;

    return-object v0
.end method

.method public declared-synchronized getOldJavaProjecNames()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->javaProjectNamesCache:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :try_start_1
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModel()Lorg/eclipse/jdt/internal/core/JavaModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModel;->getJavaProjects()[Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->javaProjectNamesCache:Ljava/util/Set;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :try_start_3
    aget-object v4, v0, v3

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->javaProjectNamesCache:Ljava/util/Set;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public initializeRoots(Z)V
    .locals 4

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->rootsAreStale:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->initializingThreads:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    :try_start_1
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->forceBatchInitializations(Z)Z

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->getRootInfos(Z)Lorg/eclipse/jdt/internal/core/DeltaProcessingState$RootInfos;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->initializingThreads:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    move v1, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->initializingThreads:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_1
    throw p1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->roots:Ljava/util/Map;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->oldRoots:Ljava/util/Map;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->otherRoots:Ljava/util/Map;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->oldOtherRoots:Ljava/util/Map;

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->rootsAreStale:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/DeltaProcessingState$RootInfos;->roots:Ljava/util/Map;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->roots:Ljava/util/Map;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/DeltaProcessingState$RootInfos;->otherRoots:Ljava/util/Map;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->otherRoots:Ljava/util/Map;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/DeltaProcessingState$RootInfos;->sourceAttachments:Ljava/util/Map;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->sourceAttachments:Ljava/util/Map;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/DeltaProcessingState$RootInfos;->projectDependencies:Ljava/util/Map;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->projectDependencies:Ljava/util/Map;

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->rootsAreStale:Z

    goto :goto_2

    :catchall_2
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1
.end method

.method public declared-synchronized initializeRootsWithPreviousSession()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->getRootInfos(Z)Lorg/eclipse/jdt/internal/core/DeltaProcessingState$RootInfos;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState$RootInfos;->roots:Ljava/util/Map;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->roots:Ljava/util/Map;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState$RootInfos;->otherRoots:Ljava/util/Map;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->otherRoots:Ljava/util/Map;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState$RootInfos;->sourceAttachments:Ljava/util/Map;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->sourceAttachments:Ljava/util/Map;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState$RootInfos;->projectDependencies:Ljava/util/Map;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->projectDependencies:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->rootsAreStale:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public removeAllClasspathChanges()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/eclipse/core/resources/IProject;",
            "Lorg/eclipse/jdt/internal/core/ClasspathChange;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->classpathChanges:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->classpathChanges:Ljava/util/Map;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->classpathChanges:Ljava/util/Map;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized removeClasspathValidations()[Lorg/eclipse/jdt/internal/core/ClasspathValidation;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->classpathValidations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_1
    new-array v0, v0, [Lorg/eclipse/jdt/internal/core/ClasspathValidation;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->classpathValidations:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->classpathValidations:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized removeElementChangedListener(Lorg/eclipse/jdt/core/IElementChangedListener;)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget v2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->elementChangedListenerCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, v2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->elementChangedListeners:[Lorg/eclipse/jdt/core/IElementChangedListener;

    aget-object v3, v2, v1

    if-ne v3, p1, :cond_2

    array-length p1, v2

    new-array v3, p1, [Lorg/eclipse/jdt/core/IElementChangedListener;

    invoke-static {v2, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array p1, p1, [I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->elementChangedListenerMasks:[I

    invoke-static {v2, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->elementChangedListenerCount:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->elementChangedListeners:[Lorg/eclipse/jdt/core/IElementChangedListener;

    add-int/lit8 v4, v1, 0x1

    invoke-static {v2, v4, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->elementChangedListenerMasks:[I

    invoke-static {v2, v4, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->elementChangedListeners:[Lorg/eclipse/jdt/core/IElementChangedListener;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->elementChangedListenerMasks:[I

    iget p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->elementChangedListenerCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->elementChangedListenerCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized removeExternalElementsToRefresh()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/core/IJavaElement;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->externalElementsToRefresh:Ljava/util/Set;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->externalElementsToRefresh:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized removeExternalFolderChanges()[Lorg/eclipse/jdt/internal/core/ExternalFolderChange;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->externalFolderChanges:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_1
    new-array v0, v0, [Lorg/eclipse/jdt/internal/core/ExternalFolderChange;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->externalFolderChanges:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->externalFolderChanges:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized removePreResourceChangedListener(Lorg/eclipse/core/resources/IResourceChangeListener;)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget v2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->preResourceChangeListenerCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, v2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->preResourceChangeListeners:[Lorg/eclipse/core/resources/IResourceChangeListener;

    aget-object v3, v2, v1

    if-ne v3, p1, :cond_2

    array-length p1, v2

    new-array v3, p1, [Lorg/eclipse/core/resources/IResourceChangeListener;

    new-array p1, p1, [I

    invoke-static {v2, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->preResourceChangeEventMasks:[I

    invoke-static {v2, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->preResourceChangeListenerCount:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->preResourceChangeListeners:[Lorg/eclipse/core/resources/IResourceChangeListener;

    add-int/lit8 v4, v1, 0x1

    invoke-static {v2, v4, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->preResourceChangeEventMasks:[I

    invoke-static {v2, v4, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->preResourceChangeListeners:[Lorg/eclipse/core/resources/IResourceChangeListener;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->preResourceChangeEventMasks:[I

    iget p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->preResourceChangeListenerCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->preResourceChangeListenerCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized removeProjectReferenceChanges()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/core/IJavaProject;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->projectReferenceChanges:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->projectReferenceChanges:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized resetOldJavaProjectNames()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->javaProjectNamesCache:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public resourceChanged(Lorg/eclipse/core/resources/IResourceChangeEvent;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->preResourceChangeListenerCount:I

    if-lt v0, v1, :cond_2

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->getDeltaProcessor()Lorg/eclipse/jdt/internal/core/DeltaProcessor;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->resourceChanged(Lorg/eclipse/core/resources/IResourceChangeEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceChangeEvent;->getType()I

    move-result p1

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->deltaProcessors:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->getDeltaProcessor()Lorg/eclipse/jdt/internal/core/DeltaProcessor;

    move-result-object p1

    iput v0, p1, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->overridenEventType:I

    :goto_1
    return-void

    :catchall_0
    move-exception v3

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceChangeEvent;->getType()I

    move-result p1

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->deltaProcessors:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->getDeltaProcessor()Lorg/eclipse/jdt/internal/core/DeltaProcessor;

    move-result-object p1

    iput v0, p1, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->overridenEventType:I

    :goto_2
    throw v3

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->preResourceChangeListeners:[Lorg/eclipse/core/resources/IResourceChangeListener;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->preResourceChangeEventMasks:[I

    aget v2, v2, v0

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceChangeEvent;->getType()I

    move-result v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_3

    new-instance v2, Lorg/eclipse/jdt/internal/core/DeltaProcessingState$1;

    invoke-direct {v2, p0, v1, p1}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState$1;-><init>(Lorg/eclipse/jdt/internal/core/DeltaProcessingState;Lorg/eclipse/core/resources/IResourceChangeListener;Lorg/eclipse/core/resources/IResourceChangeEvent;)V

    invoke-static {v2}, Lorg/eclipse/core/runtime/SafeRunner;->run(Lorg/eclipse/core/runtime/ISafeRunnable;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public saveExternalLibTimeStamps()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->externalTimeStamps:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->roots:Ljava/util/Map;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->externalTimeStamps:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/core/runtime/IPath;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->roots:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->getTimeStampsFile()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->externalTimeStamps:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->externalTimeStamps:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_5

    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void

    :cond_5
    :try_start_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {v4}, Lorg/eclipse/core/runtime/IPath;->toPortableString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v3

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v8, v0

    move-object v2, v3

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v8, v0

    :goto_3
    :try_start_4
    new-instance v0, Lorg/eclipse/core/runtime/Status;

    const-string v5, "org.eclipse.jdt.core"

    const-string v7, "Problems while saving timestamps"

    const/4 v4, 0x4

    const/4 v6, 0x4

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lorg/eclipse/core/runtime/CoreException;

    invoke-direct {v1, v0}, Lorg/eclipse/core/runtime/CoreException;-><init>(Lorg/eclipse/core/runtime/IStatus;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_4
    if-eqz v2, :cond_6

    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :cond_6
    throw v0
.end method

.method public declared-synchronized updateRoots(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/resources/IResourceDelta;Lorg/eclipse/jdt/internal/core/DeltaProcessor;)V
    .locals 10

    monitor-enter p0

    :try_start_0
    invoke-interface {p2}, Lorg/eclipse/core/resources/IResourceDelta;->getKind()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->oldRoots:Ljava/util/Map;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->oldOtherRoots:Ljava/util/Map;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->roots:Ljava/util/Map;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->otherRoots:Ljava/util/Map;

    :goto_0
    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/core/runtime/IPath;

    invoke-interface {p1, v5}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v5, v2}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v6

    invoke-interface {p2, v6}, Lorg/eclipse/core/resources/IResourceDelta;->findMember(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IResourceDelta;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;

    const/4 v7, 0x3

    if-eqz v3, :cond_5

    iget-object v8, v4, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v8

    invoke-interface {v8, v5}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v8

    if-nez v8, :cond_6

    :cond_5
    invoke-virtual {p3, v6, v7, v4}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->updateCurrentDeltaAndIndex(Lorg/eclipse/core/resources/IResourceDelta;ILorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;)Z

    :cond_6
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_2

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;

    if-eqz v3, :cond_9

    iget-object v9, v8, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v9

    invoke-interface {v9, v5}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v9

    if-nez v9, :cond_7

    :cond_9
    invoke-virtual {p3, v6, v7, v8}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->updateCurrentDeltaAndIndex(Lorg/eclipse/core/resources/IResourceDelta;ILorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;)Z

    goto :goto_3

    :goto_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
