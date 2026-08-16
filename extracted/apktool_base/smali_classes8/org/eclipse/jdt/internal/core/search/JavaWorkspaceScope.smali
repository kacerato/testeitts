.class public Lorg/eclipse/jdt/internal/core/search/JavaWorkspaceScope;
.super Lorg/eclipse/jdt/internal/core/search/AbstractJavaSearchScope;
.source "SourceFile"


# instance fields
.field private enclosingPaths:[Lorg/eclipse/core/runtime/IPath;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/AbstractJavaSearchScope;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaWorkspaceScope;->enclosingPaths:[Lorg/eclipse/core/runtime/IPath;

    return-void
.end method


# virtual methods
.method public encloses(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method public encloses(Lorg/eclipse/jdt/core/IJavaElement;)Z
    .locals 0

    .line 2
    const/4 p1, 0x1

    return p1
.end method

.method public enclosingProjectsAndJars()[Lorg/eclipse/core/runtime/IPath;
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "ms."

    const-string v3, " paths computed in "

    const-string v4, "JavaWorkspaceScope.enclosingProjectsAndJars: "

    iget-object v5, v1, Lorg/eclipse/jdt/internal/core/search/JavaWorkspaceScope;->enclosingPaths:[Lorg/eclipse/core/runtime/IPath;

    if-eqz v5, :cond_0

    return-object v5

    :cond_0
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->VERBOSE:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    goto :goto_0

    :cond_1
    const-wide/16 v6, -0x1

    :goto_0
    :try_start_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModel()Lorg/eclipse/jdt/internal/core/JavaModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModel;->getJavaProjects()[Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    new-instance v9, Ljava/util/LinkedHashSet;

    array-length v10, v0

    mul-int/lit8 v10, v10, 0x2

    invoke-direct {v9, v10}, Ljava/util/LinkedHashSet;-><init>(I)V

    array-length v10, v0

    const/4 v11, 0x0

    :goto_1
    if-lt v11, v10, :cond_7

    array-length v10, v0

    const/4 v11, 0x0

    :goto_2
    if-lt v11, v10, :cond_3

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v0

    new-array v5, v0, [Lorg/eclipse/core/runtime/IPath;

    invoke-interface {v9, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iput-object v5, v1, Lorg/eclipse/jdt/internal/core/search/JavaWorkspaceScope;->enclosingPaths:[Lorg/eclipse/core/runtime/IPath;
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v8, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->VERBOSE:Z

    if-eqz v8, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_2
    return-object v5

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_3
    :try_start_1
    aget-object v12, v0, v11

    check-cast v12, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/core/JavaProject;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v12

    array-length v13, v12

    const/4 v14, 0x0

    :goto_3
    if-lt v14, v13, :cond_4

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_4
    aget-object v15, v12, v14

    invoke-interface {v15}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v8

    const/4 v1, 0x1

    if-ne v8, v1, :cond_6

    invoke-interface {v15}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    const/4 v8, 0x0

    invoke-static {v1, v8}, Lorg/eclipse/jdt/internal/core/JavaModel;->getTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object v1

    instance-of v8, v1, Lorg/eclipse/core/resources/IFolder;

    if-eqz v8, :cond_5

    check-cast v1, Lorg/eclipse/core/resources/IFolder;

    invoke-interface {v1}, Lorg/eclipse/core/resources/IFolder;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    :cond_5
    invoke-interface {v15}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p0

    goto :goto_3

    :cond_7
    aget-object v1, v0, v11

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/resources/IProject;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_1

    :goto_4
    :try_start_2
    const-string v1, "Exception while computing workspace scope\'s enclosing projects and jars"

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x0

    :try_start_3
    new-array v0, v1, [Lorg/eclipse/core/runtime/IPath;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    sget-boolean v8, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->VERBOSE:Z

    if-eqz v8, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    if-nez v5, :cond_8

    goto :goto_5

    :cond_8
    array-length v1, v5

    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_9
    return-object v0

    :catchall_1
    move-exception v0

    :goto_6
    sget-boolean v8, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->VERBOSE:Z

    if-eqz v8, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    if-nez v5, :cond_a

    goto :goto_7

    :cond_a
    array-length v1, v5

    :goto_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_b
    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAccessRuleSet(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    const-class v0, Lorg/eclipse/jdt/internal/core/search/JavaWorkspaceScope;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public packageFragmentRoot(Ljava/lang/String;ILjava/lang/String;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;
    .locals 2

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getDeltaState()Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->roots:Ljava/util/Map;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    new-instance p1, Lorg/eclipse/core/runtime/Path;

    invoke-direct {p1, p3}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;

    goto :goto_1

    :cond_0
    new-instance p3, Lorg/eclipse/core/runtime/Path;

    invoke-direct {p3, p1}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->isInternalPathForExternalFolder(Lorg/eclipse/core/runtime/IPath;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    invoke-interface {p3, p1}, Lorg/eclipse/core/runtime/IPath;->uptoSegment(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/JavaModel;->getWorkspaceTarget(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IResource;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResource;->getLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;

    goto :goto_1

    :cond_1
    move-object p1, v0

    goto :goto_1

    :cond_2
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;

    :goto_0
    if-nez p1, :cond_4

    invoke-interface {p3}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v1

    if-gtz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    invoke-interface {p3, p1}, Lorg/eclipse/core/runtime/IPath;->removeLastSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;

    goto :goto_0

    :cond_4
    :goto_1
    if-nez p1, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->getPackageFragmentRoot(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p1

    return-object p1
.end method

.method public processDelta(Lorg/eclipse/jdt/core/IJavaElementDelta;I)V
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaWorkspaceScope;->enclosingPaths:[Lorg/eclipse/core/runtime/IPath;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElementDelta;->getElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_b

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v0, v4, :cond_5

    const/4 p2, 0x3

    if-eq v0, p2, :cond_1

    goto :goto_3

    :cond_1
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElementDelta;->getKind()I

    move-result p2

    if-eq p2, v2, :cond_4

    if-eq p2, v4, :cond_4

    if-eq p2, v3, :cond_2

    goto :goto_3

    :cond_2
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElementDelta;->getFlags()I

    move-result p1

    and-int/lit8 p2, p1, 0x40

    if-gtz p2, :cond_3

    and-int/lit16 p1, p1, 0x80

    if-lez p1, :cond_c

    :cond_3
    iput-object v5, p0, Lorg/eclipse/jdt/internal/core/search/JavaWorkspaceScope;->enclosingPaths:[Lorg/eclipse/core/runtime/IPath;

    goto :goto_3

    :cond_4
    iput-object v5, p0, Lorg/eclipse/jdt/internal/core/search/JavaWorkspaceScope;->enclosingPaths:[Lorg/eclipse/core/runtime/IPath;

    goto :goto_3

    :cond_5
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElementDelta;->getKind()I

    move-result v0

    if-eq v0, v2, :cond_a

    if-eq v0, v4, :cond_a

    if-eq v0, v3, :cond_6

    goto :goto_3

    :cond_6
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElementDelta;->getFlags()I

    move-result v0

    and-int/lit16 v2, v0, 0x400

    if-nez v2, :cond_9

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElementDelta;->getAffectedChildren()[Lorg/eclipse/jdt/core/IJavaElementDelta;

    move-result-object p1

    array-length v0, p1

    :goto_0
    if-lt v1, v0, :cond_8

    goto :goto_3

    :cond_8
    aget-object v2, p1, v1

    invoke-virtual {p0, v2, p2}, Lorg/eclipse/jdt/internal/core/search/JavaWorkspaceScope;->processDelta(Lorg/eclipse/jdt/core/IJavaElementDelta;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_9
    :goto_1
    iput-object v5, p0, Lorg/eclipse/jdt/internal/core/search/JavaWorkspaceScope;->enclosingPaths:[Lorg/eclipse/core/runtime/IPath;

    goto :goto_3

    :cond_a
    iput-object v5, p0, Lorg/eclipse/jdt/internal/core/search/JavaWorkspaceScope;->enclosingPaths:[Lorg/eclipse/core/runtime/IPath;

    goto :goto_3

    :cond_b
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElementDelta;->getAffectedChildren()[Lorg/eclipse/jdt/core/IJavaElementDelta;

    move-result-object p1

    array-length v0, p1

    :goto_2
    if-lt v1, v0, :cond_d

    :cond_c
    :goto_3
    return-void

    :cond_d
    aget-object v2, p1, v1

    invoke-virtual {p0, v2, p2}, Lorg/eclipse/jdt/internal/core/search/JavaWorkspaceScope;->processDelta(Lorg/eclipse/jdt/core/IJavaElementDelta;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "JavaWorkspaceScope on "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/JavaWorkspaceScope;->enclosingProjectsAndJars()[Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    array-length v3, v1

    :goto_0
    if-nez v3, :cond_1

    const-string v1, "[empty scope]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_1
    const-string v4, "["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    if-lt v2, v3, :cond_2

    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v4, "\n\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v4, v1, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
