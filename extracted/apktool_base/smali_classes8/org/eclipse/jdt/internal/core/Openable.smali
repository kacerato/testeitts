.class public abstract Lorg/eclipse/jdt/internal/core/Openable;
.super Lorg/eclipse/jdt/internal/core/JavaElement;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IOpenable;
.implements Lorg/eclipse/jdt/core/IBufferChangedListener;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaElement;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;)V

    return-void
.end method


# virtual methods
.method public bufferChanged(Lorg/eclipse/jdt/core/BufferChangedEvent;)V
    .locals 1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/BufferChangedEvent;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IBuffer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getElementsOutOfSynchWithBuffers()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getBufferManager()Lorg/eclipse/jdt/internal/core/BufferManager;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/BufferChangedEvent;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/BufferManager;->removeBuffer(Lorg/eclipse/jdt/core/IBuffer;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getElementsOutOfSynchWithBuffers()Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public abstract buildStructure(Lorg/eclipse/jdt/internal/core/OpenableElementInfo;Lorg/eclipse/core/runtime/IProgressMonitor;Ljava/util/Map;Lorg/eclipse/core/resources/IResource;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public canBeRemovedFromCache()Z
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->hasUnsavedChanges()Z

    move-result v0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public canBufferBeRemovedFromCache(Lorg/eclipse/jdt/core/IBuffer;)Z
    .locals 0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IBuffer;->hasUnsavedChanges()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public closeBuffer()V
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->hasBuffer()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getBufferManager()Lorg/eclipse/jdt/internal/core/BufferManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/BufferManager;->getBuffer(Lorg/eclipse/jdt/core/IOpenable;)Lorg/eclipse/jdt/core/IBuffer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IBuffer;->close()V

    invoke-interface {v0, p0}, Lorg/eclipse/jdt/core/IBuffer;->removeBufferChangedListener(Lorg/eclipse/jdt/core/IBufferChangedListener;)V

    :cond_1
    return-void
.end method

.method public closing(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->closeBuffer()V

    return-void
.end method

.method public codeComplete(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;ILorg/eclipse/jdt/core/CompletionRequestor;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/core/ITypeRoot;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    move v0, p3

    if-eqz p4, :cond_6

    sget-boolean v1, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->PERF:Z

    if-eqz v1, :cond_0

    const-string v1, "org.eclipse.jdt.core/perf/completion"

    move-object v8, p0

    invoke-static {v1, p0}, Lorg/eclipse/core/runtime/PerformanceStats;->getStats(Ljava/lang/String;Ljava/lang/Object;)Lorg/eclipse/core/runtime/PerformanceStats;

    move-result-object v1

    :goto_0
    move-object v9, v1

    goto :goto_1

    :cond_0
    move-object v8, p0

    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    if-eqz v9, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IDependent;->getFileName()[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/eclipse/core/runtime/PerformanceStats;->startRun(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v2, -0x1

    if-lt v0, v2, :cond_5

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IBuffer;->getLength()I

    move-result v1

    if-gt v0, v1, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual/range {p4 .. p4}, Lorg/eclipse/jdt/core/CompletionRequestor;->isTestCodeExcluded()Z

    move-result v1

    move-object/from16 v6, p5

    invoke-virtual {v5, v6, v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->newSearchableNameEnvironment(Lorg/eclipse/jdt/core/WorkingCopyOwner;Z)Lorg/eclipse/jdt/internal/core/SearchableEnvironment;

    move-result-object v10

    move-object v1, p2

    iput-object v1, v10, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->unitToSkip:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    new-instance v11, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOptions(Z)Ljava/util/Map;

    move-result-object v4

    move-object v1, v11

    move-object v2, v10

    move-object/from16 v3, p4

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;-><init>(Lorg/eclipse/jdt/internal/core/SearchableEnvironment;Lorg/eclipse/jdt/core/CompletionRequestor;Ljava/util/Map;Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    const/4 v1, 0x0

    move-object v2, p1

    move-object/from16 v3, p6

    invoke-virtual {v11, p1, p3, v1, v3}, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->complete(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;IILorg/eclipse/jdt/core/ITypeRoot;)V

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lorg/eclipse/core/runtime/PerformanceStats;->endRun()V

    :cond_3
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/NameLookup;->VERBOSE:Z

    if-eqz v0, :cond_4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " TIME SPENT in NameLoopkup#seekTypesInSourcePackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    iget-wide v2, v2, Lorg/eclipse/jdt/internal/core/NameLookup;->timeSpentInSeekTypesInSourcePackage:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " TIME SPENT in NameLoopkup#seekTypesInBinaryPackage: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    iget-wide v3, v3, Lorg/eclipse/jdt/internal/core/NameLookup;->timeSpentInSeekTypesInBinaryPackage:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    new-instance v0, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v2, 0x3d4

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(I)V

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw v0

    :cond_6
    move-object v8, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Completion requestor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public codeSelect(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;IILorg/eclipse/jdt/core/WorkingCopyOwner;)[Lorg/eclipse/jdt/core/IJavaElement;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    sget-boolean v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->PERF:Z

    if-eqz v0, :cond_0

    const-string v0, "org.eclipse.jdt.core/perf/selection"

    invoke-static {v0, p0}, Lorg/eclipse/core/runtime/PerformanceStats;->getStats(Ljava/lang/String;Ljava/lang/Object;)Lorg/eclipse/core/runtime/PerformanceStats;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IDependent;->getFileName()[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " at ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/core/runtime/PerformanceStats;->startRun(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v1, p4}, Lorg/eclipse/jdt/internal/core/JavaProject;->newSearchableNameEnvironment(Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/internal/core/SearchableEnvironment;

    move-result-object v2

    new-instance v3, Lorg/eclipse/jdt/internal/core/SelectionRequestor;

    iget-object v4, v2, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    invoke-direct {v3, v4, p0}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;-><init>(Lorg/eclipse/jdt/internal/core/NameLookup;Lorg/eclipse/jdt/internal/core/Openable;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->getElements()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-interface {v4}, Lorg/eclipse/jdt/core/IBuffer;->getLength()I

    move-result v4

    if-ltz p2, :cond_5

    if-ltz p3, :cond_5

    add-int/2addr p3, p2

    if-gt p3, v4, :cond_5

    new-instance v4, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOptions(Z)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v4, v2, v3, v1, p4}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;-><init>(Lorg/eclipse/jdt/internal/core/SearchableEnvironment;Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;Ljava/util/Map;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V

    sub-int/2addr p3, v5

    invoke-virtual {v4, p1, p2, p3}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->select(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;II)V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/core/runtime/PerformanceStats;->endRun()V

    :cond_3
    sget-boolean p1, Lorg/eclipse/jdt/internal/core/NameLookup;->VERBOSE:Z

    if-eqz p1, :cond_4

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " TIME SPENT in NameLoopkup#seekTypesInSourcePackage: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v2, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    iget-wide p3, p3, Lorg/eclipse/jdt/internal/core/NameLookup;->timeSpentInSeekTypesInSourcePackage:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "ms"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " TIME SPENT in NameLoopkup#seekTypesInBinaryPackage: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, v2, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    iget-wide v0, p4, Lorg/eclipse/jdt/internal/core/NameLookup;->timeSpentInSeekTypesInBinaryPackage:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->getElements()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1

    :cond_5
    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance p2, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 p3, 0x3d4

    invoke-direct {p2, p3}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(I)V

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw p1
.end method

.method public createElementInfo()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;-><init>()V

    return-object v0
.end method

.method public exists()Z
    .locals 2

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getInfo(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-interface {p0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getPackageFragmentRoot()Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->isArchive()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->exists()Z

    move-result v0

    return v0

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getPackageFragmentRoot()Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->isArchive()Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRootInfo;
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRootInfo;->rawPackageInfo:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    move-object v1, p0

    check-cast v1, Lorg/eclipse/jdt/internal/core/PackageFragment;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->containsKey([Ljava/lang/Object;)Z

    move-result v0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/Openable;->validateExistence(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/core/runtime/IStatus;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IStatus;->isOK()Z

    move-result v0

    return v0
.end method

.method public findRecommendedLineSeparator()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IBuffer;->getContents()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->getLineSeparator(Ljava/lang/String;Lorg/eclipse/jdt/core/IJavaProject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generateInfos(Ljava/lang/Object;Ljava/util/HashMap;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->VERBOSE:Z

    if-eqz v0, :cond_5

    invoke-interface {p0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const-string v0, "element"

    goto :goto_0

    :cond_0
    const-string v0, "class file"

    goto :goto_0

    :cond_1
    const-string v0, "compilation unit"

    goto :goto_0

    :cond_2
    const-string v0, "package"

    goto :goto_0

    :cond_3
    const-string v0, "root"

    goto :goto_0

    :cond_4
    const-string v0, "project"

    :goto_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " OPENING "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringWithAncestors()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0, p2, p3}, Lorg/eclipse/jdt/internal/core/Openable;->openAncestors(Ljava/util/HashMap;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/Openable;->validateExistence(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/core/runtime/IStatus;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/runtime/IStatus;->isOK()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/Openable;->ignoreErrorStatus(Lorg/eclipse/core/runtime/IStatus;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/JavaElement;->newJavaModelException(Lorg/eclipse/core/runtime/IStatus;)Lorg/eclipse/jdt/core/JavaModelException;

    move-result-object p1

    throw p1

    :cond_7
    :goto_1
    if-eqz p3, :cond_9

    invoke-interface {p3}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_2

    :cond_8
    new-instance p1, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {p1}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    throw p1

    :cond_9
    :goto_2
    invoke-virtual {p2, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    check-cast p1, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;

    invoke-virtual {p0, p1, p3, p2, v0}, Lorg/eclipse/jdt/internal/core/Openable;->buildStructure(Lorg/eclipse/jdt/internal/core/OpenableElementInfo;Lorg/eclipse/core/runtime/IProgressMonitor;Ljava/util/Map;Lorg/eclipse/core/resources/IResource;)Z

    move-result p3

    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->setIsStructureKnown(Z)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getElementsOutOfSynchWithBuffers()Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    sget-boolean p1, Lorg/eclipse/jdt/internal/core/JavaModelCache;->VERBOSE:Z

    if-eqz p1, :cond_a

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object p2

    const-string p3, "-> "

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->cacheToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_a
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw p1
.end method

.method public getBuffer()Lorg/eclipse/jdt/core/IBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->hasBuffer()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getBufferManager()Lorg/eclipse/jdt/internal/core/BufferManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/eclipse/jdt/internal/core/BufferManager;->getBuffer(Lorg/eclipse/jdt/core/IOpenable;)Lorg/eclipse/jdt/core/IBuffer;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/internal/core/Openable;->openBuffer(Lorg/eclipse/core/runtime/IProgressMonitor;Ljava/lang/Object;)Lorg/eclipse/jdt/core/IBuffer;

    move-result-object v2

    :cond_0
    instance-of v0, v2, Lorg/eclipse/jdt/internal/core/NullBuffer;

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    return-object v2

    :cond_2
    return-object v1
.end method

.method public getBufferFactory()Lorg/eclipse/jdt/core/IBufferFactory;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getBufferManager()Lorg/eclipse/jdt/internal/core/BufferManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/BufferManager;->getDefaultBufferFactory()Lorg/eclipse/jdt/core/IBufferFactory;

    move-result-object v0

    return-object v0
.end method

.method public getBufferManager()Lorg/eclipse/jdt/internal/core/BufferManager;
    .locals 1

    invoke-static {}, Lorg/eclipse/jdt/internal/core/BufferManager;->getDefaultBufferManager()Lorg/eclipse/jdt/internal/core/BufferManager;

    move-result-object v0

    return-object v0
.end method

.method public getCorrespondingResource()Lorg/eclipse/core/resources/IResource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getUnderlyingResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    return-object v0
.end method

.method public getOpenable()Lorg/eclipse/jdt/core/IOpenable;
    .locals 0

    return-object p0
.end method

.method public getPackageFragmentRoot()Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    return-object v0
.end method

.method public getResource()Lorg/eclipse/core/resources/IResource;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getPackageFragmentRoot()Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->isExternal()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->isArchive()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->resource(Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;)Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/Openable;->resource(Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;)Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    return-object v0
.end method

.method public getUnderlyingResource()Lorg/eclipse/core/resources/IResource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getUnderlyingResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    check-cast v0, Lorg/eclipse/core/resources/IContainer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/core/resources/IContainer;->findMember(Ljava/lang/String;)Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->newNotPresentException()Lorg/eclipse/jdt/core/JavaModelException;

    move-result-object v0

    throw v0
.end method

.method public hasBuffer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasUnsavedChanges()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->isReadOnly()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IBuffer;->hasUnsavedChanges()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-interface {p0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    if-ne v0, v2, :cond_4

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getBufferManager()Lorg/eclipse/jdt/internal/core/BufferManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/BufferManager;->getOpenBuffers()Ljava/util/Enumeration;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    return v1

    :cond_5
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/IBuffer;

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IBuffer;->hasUnsavedChanges()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IBuffer;->getOwner()Lorg/eclipse/jdt/core/IOpenable;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/IJavaElement;

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/core/JavaElement;->isAncestorOf(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_6
    :goto_0
    return v1
.end method

.method public ignoreErrorStatus(Lorg/eclipse/core/runtime/IStatus;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isConsistent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isOpen()Z
    .locals 1

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getInfo(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSourceElement()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isStructureKnown()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->isStructureKnown()Z

    move-result v0

    return v0
.end method

.method public makeConsistent(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    return-void
.end method

.method public open(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo(Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/lang/Object;

    return-void
.end method

.method public openAncestors(Ljava/util/HashMap;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getOpenableParent()Lorg/eclipse/jdt/core/IOpenable;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/Openable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/Openable;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/Openable;->createElementInfo()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lorg/eclipse/jdt/internal/core/Openable;->generateInfos(Ljava/lang/Object;Ljava/util/HashMap;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :cond_0
    return-void
.end method

.method public openBuffer(Lorg/eclipse/core/runtime/IProgressMonitor;Ljava/lang/Object;)Lorg/eclipse/jdt/core/IBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public resource()Lorg/eclipse/core/resources/IResource;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getPackageFragmentRoot()Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->isArchive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->resource(Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;)Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/Openable;->resource(Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;)Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    return-object v0
.end method

.method public abstract resource(Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;)Lorg/eclipse/core/resources/IResource;
.end method

.method public resourceExists(Lorg/eclipse/core/resources/IResource;)Z
    .locals 0

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResource;->isAccessible()Z

    move-result p1

    return p1
.end method

.method public save(Lorg/eclipse/core/runtime/IProgressMonitor;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jdt/core/IBuffer;->save(Lorg/eclipse/core/runtime/IProgressMonitor;Z)V

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/Openable;->makeConsistent(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance p2, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v0, 0x3d0

    invoke-direct {p2, v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw p1
.end method

.method public abstract validateExistence(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/core/runtime/IStatus;
.end method
