.class public Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;
.super Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;
.source "SourceFile"


# static fields
.field public static MaxCompileLoop:I = 0x5


# instance fields
.field protected hasStructuralChanges:Z

.field protected makeOutputFolderConsistent:Z

.field protected previousSourceFiles:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lorg/eclipse/jdt/internal/core/builder/SourceFile;",
            ">;"
        }
    .end annotation
.end field

.field protected qualifiedStrings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected rootStrings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected secondaryTypesToRemove:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

.field protected simpleStrings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected sourceFiles:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lorg/eclipse/jdt/internal/core/builder/SourceFile;",
            ">;"
        }
    .end annotation
.end field

.field private testImageBuilder:Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;Lorg/eclipse/jdt/internal/core/CompilationGroup;)V
    .locals 1

    .line 14
    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->newState:Lorg/eclipse/jdt/internal/core/builder/State;

    invoke-direct {p0, v0, p1, p2}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;-><init>(Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;Lorg/eclipse/jdt/internal/core/builder/State;Lorg/eclipse/jdt/internal/core/CompilationGroup;)V

    .line 15
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->resetCollections()V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;)V
    .locals 2

    const/4 v0, 0x0

    .line 12
    sget-object v1, Lorg/eclipse/jdt/internal/core/CompilationGroup;->MAIN:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;-><init>(Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;Lorg/eclipse/jdt/internal/core/builder/State;Lorg/eclipse/jdt/internal/core/CompilationGroup;)V

    .line 13
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->newState:Lorg/eclipse/jdt/internal/core/builder/State;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->lastState:Lorg/eclipse/jdt/internal/core/builder/State;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/builder/State;->copyFrom(Lorg/eclipse/jdt/internal/core/builder/State;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;Lorg/eclipse/jdt/internal/core/builder/State;Lorg/eclipse/jdt/internal/core/CompilationGroup;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0, p2, p3}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;-><init>(Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;ZLorg/eclipse/jdt/internal/core/builder/State;Lorg/eclipse/jdt/internal/core/CompilationGroup;)V

    .line 2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->nameEnvironment:Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;

    iput-boolean v0, p2, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->isIncrementalBuild:Z

    .line 3
    iget-object p2, p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->javaProject:Lorg/eclipse/jdt/internal/core/JavaProject;

    const-string v1, "org.eclipse.jdt.core.builder.recreateModifiedClassFileInOutputFolder"

    invoke-virtual {p2, v1, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    .line 4
    const-string v0, "enabled"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->makeOutputFolderConsistent:Z

    .line 5
    sget-object p2, Lorg/eclipse/jdt/internal/core/CompilationGroup;->MAIN:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    if-ne p3, p2, :cond_0

    .line 6
    new-instance p2, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->newState:Lorg/eclipse/jdt/internal/core/builder/State;

    .line 7
    sget-object v0, Lorg/eclipse/jdt/internal/core/CompilationGroup;->TEST:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    .line 8
    invoke-direct {p2, p1, p3, v0}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;-><init>(Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;Lorg/eclipse/jdt/internal/core/builder/State;Lorg/eclipse/jdt/internal/core/CompilationGroup;)V

    .line 9
    iget-object p1, p2, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    array-length p1, p1

    if-lez p1, :cond_0

    .line 10
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->testImageBuilder:Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;

    .line 11
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->resetCollections()V

    :cond_0
    return-void
.end method

.method private incrementalBuildLoop()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    const/4 v0, 0x0

    const v1, 0x3ecccccd    # 0.4f

    move v2, v0

    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->sourceFiles:Ljava/util/LinkedHashSet;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gtz v3, :cond_0

    return v4

    :cond_0
    add-int/2addr v2, v4

    sget v3, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->MaxCompileLoop:I

    if-le v2, v3, :cond_2

    sget-boolean v1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "ABORTING incremental build... exceeded loop count"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    return v0

    :cond_2
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->checkCancel()V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->sourceFiles:Ljava/util/LinkedHashSet;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    new-array v4, v3, [Lorg/eclipse/jdt/internal/core/builder/SourceFile;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->sourceFiles:Ljava/util/LinkedHashSet;

    invoke-virtual {v5, v4}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->resetCollections()V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->workQueue:Lorg/eclipse/jdt/internal/core/builder/WorkQueue;

    invoke-virtual {v5, v4}, Lorg/eclipse/jdt/internal/core/builder/WorkQueue;->addAll([Lorg/eclipse/jdt/internal/core/builder/SourceFile;)V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    int-to-float v3, v3

    div-float v3, v1, v3

    invoke-virtual {v5, v3}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->setProgressPerCompilationUnit(F)V

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->compile([Lorg/eclipse/jdt/internal/core/builder/SourceFile;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->removeSecondaryTypes()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->addAffectedSourceFiles()V

    goto :goto_0
.end method


# virtual methods
.method public addAffectedSourceFiles()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->qualifiedStrings:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->simpleStrings:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->testImageBuilder:Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->qualifiedStrings:Ljava/util/Set;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->simpleStrings:Ljava/util/Set;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->rootStrings:Ljava/util/Set;

    invoke-virtual {v0, v2, v3, v4, v1}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->addAffectedSourceFiles(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 4
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->qualifiedStrings:Ljava/util/Set;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->simpleStrings:Ljava/util/Set;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->rootStrings:Ljava/util/Set;

    invoke-virtual {p0, v0, v2, v3, v1}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->addAffectedSourceFiles(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public addAffectedSourceFiles(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->internQualifiedNames(Ljava/util/Set;)[[[C

    move-result-object v0

    .line 6
    array-length v1, v0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    const/4 v2, 0x0

    if-ge v1, p1, :cond_0

    move-object v0, v2

    :cond_0
    const/4 p1, 0x1

    .line 7
    invoke-static {p2, p1}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->internSimpleNames(Ljava/util/Set;Z)[[C

    move-result-object v1

    .line 8
    array-length v3, v1

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    if-ge v3, p2, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    const/4 p2, 0x0

    .line 9
    invoke-static {p3, p2}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->internSimpleNames(Ljava/util/Set;Z)[[C

    move-result-object p3

    .line 10
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->newState:Lorg/eclipse/jdt/internal/core/builder/State;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/builder/State;->references:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->keyTable:[Ljava/lang/Object;

    .line 11
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->valueTable:[Ljava/lang/Object;

    .line 12
    array-length v4, v1

    :goto_1
    if-lt p2, v4, :cond_2

    return-void

    .line 13
    :cond_2
    aget-object v5, v3, p2

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_8

    if-eqz p4, :cond_3

    .line 14
    invoke-interface {p4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    .line 15
    :cond_3
    aget-object v6, v1, p2

    check-cast v6, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;

    .line 16
    invoke-virtual {v6, v0, v2, p3}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->includes([[[C[[C[[C)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 17
    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v6, v5}, Lorg/eclipse/core/resources/IProject;->getFile(Ljava/lang/String;)Lorg/eclipse/core/resources/IFile;

    move-result-object v6

    .line 18
    invoke-virtual {p0, v6, p1}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->findSourceFile(Lorg/eclipse/core/resources/IFile;Z)Lorg/eclipse/jdt/internal/core/builder/SourceFile;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_2

    .line 19
    :cond_4
    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->sourceFiles:Ljava/util/LinkedHashSet;

    invoke-virtual {v7, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_2

    .line 20
    :cond_5
    iget-boolean v7, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->compiledAllAtOnce:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->previousSourceFiles:Ljava/util/LinkedHashSet;

    if-eqz v7, :cond_6

    invoke-virtual {v7, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_2

    .line 21
    :cond_6
    sget-boolean v7, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v7, :cond_7

    .line 22
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "  adding affected source file "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 23
    :cond_7
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->sourceFiles:Ljava/util/LinkedHashSet;

    invoke-virtual {v5, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1
.end method

.method public addDependentsOf(Lorg/eclipse/core/runtime/IPath;Z)V
    .locals 6

    .line 1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->qualifiedStrings:Ljava/util/Set;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->simpleStrings:Ljava/util/Set;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->rootStrings:Ljava/util/Set;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->addDependentsOf(Lorg/eclipse/core/runtime/IPath;ZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public addDependentsOf(Lorg/eclipse/core/runtime/IPath;ZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/core/runtime/IPath;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Lorg/eclipse/core/runtime/IPath;->setDevice(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->lastSegment()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->PACKAGE_INFO_NAME:[C

    array-length v4, v3

    if-ne v2, v4, :cond_0

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {p1, v0}, Lorg/eclipse/core/runtime/IPath;->removeLastSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 8
    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->hasStructuralChanges:Z

    if-nez p2, :cond_1

    .line 9
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->newState:Lorg/eclipse/jdt/internal/core/builder/State;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/builder/State;->tagAsStructurallyChanged()V

    .line 10
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->hasStructuralChanges:Z

    :cond_1
    const/4 p2, 0x0

    .line 11
    invoke-interface {p1, p2}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-interface {p1, v0}, Lorg/eclipse/core/runtime/IPath;->removeLastSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    .line 13
    invoke-interface {p3, p5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p3

    .line 14
    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->lastSegment()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x24

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_2

    .line 16
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 17
    :cond_2
    invoke-interface {p4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p2

    or-int/2addr p2, p3

    if-eqz p2, :cond_3

    .line 18
    sget-boolean p2, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p2, :cond_3

    .line 19
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "  will look for dependents of "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public build(Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;)Z
    .locals 9

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    array-length v0, v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->testImageBuilder:Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->build(Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;)Z

    move-result p1

    return p1

    :cond_0
    return v1

    :cond_1
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "INCREMENTAL build"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->resetCollections()V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    sget-object v3, Lorg/eclipse/jdt/internal/core/util/Messages;->build_analyzingDeltas:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->subTask(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->hasBuildpathErrors()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-boolean p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p1, :cond_3

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "COMPILING all source files since the buildpath has errors "

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :catch_1
    move-exception p1

    goto/16 :goto_4

    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    const-string v2, "org.eclipse.jdt.core.problem"

    invoke-interface {p1, v2, v0, v0}, Lorg/eclipse/core/resources/IProject;->deleteMarkers(Ljava/lang/String;ZI)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->sourceFiles:Ljava/util/LinkedHashSet;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->addAllSourceFiles(Ljava/util/LinkedHashSet;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->updateProgressDelta(F)V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/core/resources/IResourceDelta;

    if-eqz v2, :cond_8

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->findSourceFiles(Lorg/eclipse/core/resources/IResourceDelta;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->testImageBuilder:Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;

    if-eqz v1, :cond_5

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->build(Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;)Z

    move-result v0
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/core/builder/AbortIncrementalBuildException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->cleanUp()V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->testImageBuilder:Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->cleanUp()V

    :cond_6
    return v0

    :cond_7
    :try_start_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->testImageBuilder:Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;

    if-eqz v3, :cond_8

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->findSourceFiles(Lorg/eclipse/core/resources/IResourceDelta;)Z

    :cond_8
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->updateProgressDelta(F)V

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->keyTable:[Ljava/lang/Object;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->valueTable:[Ljava/lang/Object;

    array-length v4, p1

    move v5, v0

    :goto_1
    if-lt v5, v4, :cond_f

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    invoke-virtual {p1, v3}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->updateProgressDelta(F)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->build_analyzingSources:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->subTask(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->addAffectedSourceFiles()V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    const v2, 0x3d4ccccd    # 0.05f

    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->updateProgressDelta(F)V

    :goto_2
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->incrementalBuildLoop()Z

    move-result p1
    :try_end_1
    .catch Lorg/eclipse/jdt/internal/core/builder/AbortIncrementalBuildException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->cleanUp()V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->testImageBuilder:Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->cleanUp()V

    :cond_9
    return v0

    :cond_a
    :try_start_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->testImageBuilder:Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;

    if-eqz p1, :cond_c

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->incrementalBuildLoop()Z

    move-result p1
    :try_end_2
    .catch Lorg/eclipse/jdt/internal/core/builder/AbortIncrementalBuildException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_c

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->cleanUp()V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->testImageBuilder:Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->cleanUp()V

    :cond_b
    return v0

    :cond_c
    :try_start_3
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->hasStructuralChanges:Z

    if-eqz p1, :cond_d

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->javaProject:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->hasCycleMarker()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->mustPropagateStructuralChanges()V
    :try_end_3
    .catch Lorg/eclipse/jdt/internal/core/builder/AbortIncrementalBuildException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->cleanUp()V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->testImageBuilder:Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->cleanUp()V

    :cond_e
    return v1

    :cond_f
    :try_start_4
    aget-object v6, p1, v5

    check-cast v6, Lorg/eclipse/core/resources/IResourceDelta;

    if-eqz v6, :cond_11

    aget-object v7, v2, v5

    check-cast v7, Lorg/eclipse/core/resources/IProject;

    iget-object v8, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    iget-object v8, v8, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->binaryLocationsPerProject:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v8, v7}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    if-eqz v8, :cond_11

    invoke-virtual {p0, v6, v8, v7}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->findAffectedSourceFiles(Lorg/eclipse/core/resources/IResourceDelta;[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;Lorg/eclipse/core/resources/IProject;)Z

    move-result v6
    :try_end_4
    .catch Lorg/eclipse/jdt/internal/core/builder/AbortIncrementalBuildException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v6, :cond_11

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->cleanUp()V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->testImageBuilder:Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->cleanUp()V

    :cond_10
    return v0

    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :goto_3
    :try_start_5
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->internalException(Lorg/eclipse/core/runtime/CoreException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :goto_4
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v1, :cond_12

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ABORTING incremental build... problem with "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/builder/AbortIncrementalBuildException;->qualifiedTypeName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Likely renamed inside its existing source file."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_12
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->cleanUp()V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->testImageBuilder:Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->cleanUp()V

    :cond_13
    return v0

    :goto_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->cleanUp()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->testImageBuilder:Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->cleanUp()V

    :cond_14
    throw p1
.end method

.method public buildAfterBatchBuild()V
    .locals 5

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "INCREMENTAL build after batch build @ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->addAffectedSourceFiles()V

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->sourceFiles:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->cleanUp()V

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->checkCancel()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->sourceFiles:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    new-array v1, v0, [Lorg/eclipse/jdt/internal/core/builder/SourceFile;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->sourceFiles:Ljava/util/LinkedHashSet;

    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->resetCollections()V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    int-to-float v0, v0

    const v3, 0x3da3d70a    # 0.08f

    div-float/2addr v3, v0

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->setProgressPerCompilationUnit(F)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->workQueue:Lorg/eclipse/jdt/internal/core/builder/WorkQueue;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/builder/WorkQueue;->addAll([Lorg/eclipse/jdt/internal/core/builder/SourceFile;)V

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->compile([Lorg/eclipse/jdt/internal/core/builder/SourceFile;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->removeSecondaryTypes()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->addAffectedSourceFiles()V
    :try_end_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->internalException(Lorg/eclipse/core/runtime/CoreException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->cleanUp()V

    throw v0
.end method

.method public checkForClassFileChanges(Lorg/eclipse/core/resources/IResourceDelta;Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    iget-object v1, p2, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->exclusionPatterns:[[C

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-object v4, p2, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->inclusionPatterns:[[C

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p2, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->inclusionPatterns:[[C

    invoke-static {v0, v4, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/core/resources/IResource;[[C[[C)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result v4

    if-eq v4, v3, :cond_6

    const/4 v0, 0x2

    if-eq v4, v0, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    iget-object v0, p2, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->inclusionPatterns:[[C

    if-nez v0, :cond_3

    return v3

    :cond_3
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getAffectedChildren()[Lorg/eclipse/core/resources/IResourceDelta;

    move-result-object p1

    array-length v4, p1

    move v0, v2

    :goto_1
    if-lt v0, v4, :cond_4

    return v3

    :cond_4
    aget-object v1, p1, v0

    invoke-virtual {p0, v1, p2, p3}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->checkForClassFileChanges(Lorg/eclipse/core/resources/IResourceDelta;Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;I)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    if-nez v1, :cond_8

    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isClassFileName(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-interface {p1, p3}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->removeFileExtension()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->newState:Lorg/eclipse/jdt/internal/core/builder/State;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/core/builder/State;->isKnownType(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    sget-boolean p2, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p2, :cond_7

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "MUST DO FULL BUILD. Found change to class file "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7
    return v2

    :cond_8
    :goto_2
    return v3
.end method

.method public cleanUp()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->cleanUp()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->sourceFiles:Ljava/util/LinkedHashSet;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->previousSourceFiles:Ljava/util/LinkedHashSet;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->qualifiedStrings:Ljava/util/Set;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->simpleStrings:Ljava/util/Set;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->rootStrings:Ljava/util/Set;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->secondaryTypesToRemove:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->hasStructuralChanges:Z

    return-void
.end method

.method public compile([Lorg/eclipse/jdt/internal/core/builder/SourceFile;[Lorg/eclipse/jdt/internal/core/builder/SourceFile;Z)V
    .locals 8

    if-eqz p3, :cond_5

    if-eqz p2, :cond_5

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-lt v3, v0, :cond_1

    if-eqz v2, :cond_5

    array-length v0, p1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int v4, v0, v3

    new-array v4, v4, [Lorg/eclipse/jdt/internal/core/builder/SourceFile;

    invoke-static {p1, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    if-lt v1, v3, :cond_0

    move-object p1, v4

    goto :goto_2

    :cond_0
    add-int/lit8 p1, v0, 0x1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/internal/core/builder/SourceFile;

    aput-object v5, v4, v0

    add-int/lit8 v1, v1, 0x1

    move v0, p1

    goto :goto_1

    :cond_1
    aget-object v4, p2, v3

    if-eqz v4, :cond_4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->newState:Lorg/eclipse/jdt/internal/core/builder/State;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->typeLocator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/core/builder/State;->getDefinedTypeNamesFor(Ljava/lang/String;)[[C

    move-result-object v5

    if-eqz v5, :cond_4

    sget-boolean v5, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v5, :cond_2

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "About to compile file with secondary types "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->typeLocator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    if-nez v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    const/4 v5, 0x3

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    :cond_3
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->compile([Lorg/eclipse/jdt/internal/core/builder/SourceFile;[Lorg/eclipse/jdt/internal/core/builder/SourceFile;Z)V

    return-void
.end method

.method public deleteGeneratedFiles([Lorg/eclipse/core/resources/IFile;)V
    .locals 9

    :try_start_0
    array-length v0, p1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    aget-object v1, p1, v0

    invoke-interface {v1}, Lorg/eclipse/core/resources/IFile;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->findSourceFile(Lorg/eclipse/core/resources/IFile;Z)Lorg/eclipse/jdt/internal/core/builder/SourceFile;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->typeLocator()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->sourceLocation:Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->sourceFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v4}, Lorg/eclipse/core/resources/IContainer;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v4

    iget-object v5, v1, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->resource:Lorg/eclipse/core/resources/IFile;

    invoke-interface {v5}, Lorg/eclipse/core/resources/IFile;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v5

    invoke-interface {v5, v4}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/core/runtime/IPath;->removeFileExtension()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->addDependentsOf(Lorg/eclipse/core/runtime/IPath;Z)V

    const/4 v6, 0x0

    iput-object v6, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->previousSourceFiles:Ljava/util/LinkedHashSet;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->newState:Lorg/eclipse/jdt/internal/core/builder/State;

    invoke-virtual {v6, v3}, Lorg/eclipse/jdt/internal/core/builder/State;->getDefinedTypeNamesFor(Ljava/lang/String;)[[C

    move-result-object v6

    if-nez v6, :cond_2

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->sourceLocation:Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->binaryFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-virtual {p0, v4, v1}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->removeClassFile(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/resources/IContainer;)V

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_2
    array-length v7, v6

    if-lez v7, :cond_4

    invoke-interface {v4, v5}, Lorg/eclipse/core/runtime/IPath;->removeLastSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    array-length v5, v6

    :goto_1
    if-lt v2, v5, :cond_3

    goto :goto_2

    :cond_3
    new-instance v7, Ljava/lang/String;

    aget-object v8, v6, v2

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v4, v7}, Lorg/eclipse/core/runtime/IPath;->append(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v7

    iget-object v8, v1, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->sourceLocation:Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    iget-object v8, v8, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->binaryFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-virtual {p0, v7, v8}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->removeClassFile(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/resources/IContainer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->newState:Lorg/eclipse/jdt/internal/core/builder/State;

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/core/builder/State;->removeLocator(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_3
    const-string v0, "JavaBuilder logging CompilationParticipant\'s CoreException to help debugging"

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public findAffectedSourceFiles(Lorg/eclipse/core/resources/IResourceDelta;ILorg/eclipse/jdt/internal/core/builder/StringSet;)V
    .locals 7

    .line 18
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    .line 19
    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v5, :cond_9

    if-eq v1, v3, :cond_0

    goto/16 :goto_4

    .line 20
    :cond_0
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getKind()I

    move-result v1

    if-eq v1, v5, :cond_1

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_7

    goto/16 :goto_2

    .line 21
    :cond_1
    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getKind()I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 24
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->newState:Lorg/eclipse/jdt/internal/core/builder/State;

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/core/builder/State;->isKnownPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 25
    sget-boolean p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p1, :cond_2

    .line 26
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Found added package "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 27
    :cond_2
    invoke-virtual {p0, v0, v4}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->addDependentsOf(Lorg/eclipse/core/runtime/IPath;Z)V

    return-void

    .line 28
    :cond_3
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 29
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Skipped dependents of added package "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_4
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->nameEnvironment:Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->ANY:[C

    invoke-virtual {v2, v1, v3}, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->isPackage(Ljava/lang/String;[C)Z

    move-result v2

    if-nez v2, :cond_6

    .line 31
    sget-boolean p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p1, :cond_5

    .line 32
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Found removed package "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 33
    :cond_5
    invoke-virtual {p0, v0, v4}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->addDependentsOf(Lorg/eclipse/core/runtime/IPath;Z)V

    return-void

    .line 34
    :cond_6
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 35
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Skipped dependents of removed package "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 36
    :cond_7
    :goto_0
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getAffectedChildren()[Lorg/eclipse/core/resources/IResourceDelta;

    move-result-object v1

    .line 37
    array-length v6, v1

    :goto_1
    if-lt v4, v6, :cond_8

    :goto_2
    return-void

    .line 38
    :cond_8
    aget-object p1, v1, v4

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->findAffectedSourceFiles(Lorg/eclipse/core/resources/IResourceDelta;ILorg/eclipse/jdt/internal/core/builder/StringSet;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 39
    :cond_9
    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isClassFileName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 40
    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object p2

    invoke-interface {p2}, Lorg/eclipse/core/runtime/IPath;->removeFileExtension()Lorg/eclipse/core/runtime/IPath;

    move-result-object p2

    .line 41
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getKind()I

    move-result v0

    if-eq v0, v5, :cond_e

    if-eq v0, v3, :cond_e

    if-eq v0, v2, :cond_a

    goto :goto_3

    .line 42
    :cond_a
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x100

    if-nez p1, :cond_b

    return-void

    :cond_b
    if-eqz p3, :cond_c

    .line 43
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/eclipse/jdt/internal/core/builder/StringSet;->includes(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_c

    return-void

    .line 44
    :cond_c
    sget-boolean p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p1, :cond_d

    .line 45
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Found changed class file "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 46
    :cond_d
    invoke-virtual {p0, p2, v4}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->addDependentsOf(Lorg/eclipse/core/runtime/IPath;Z)V

    :goto_3
    return-void

    .line 47
    :cond_e
    sget-boolean p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p1, :cond_f

    .line 48
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Found added/removed class file "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 49
    :cond_f
    invoke-virtual {p0, p2, v4}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->addDependentsOf(Lorg/eclipse/core/runtime/IPath;Z)V

    :cond_10
    :goto_4
    return-void
.end method

.method public findAffectedSourceFiles(Lorg/eclipse/core/resources/IResourceDelta;[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;Lorg/eclipse/core/resources/IProject;)Z
    .locals 9

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-lt v2, v0, :cond_0

    return v3

    .line 2
    :cond_0
    aget-object v4, p2, v2

    if-eqz v4, :cond_8

    .line 3
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->getProjectRelativePath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 4
    invoke-interface {p1, v5}, Lorg/eclipse/core/resources/IResourceDelta;->findMember(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IResourceDelta;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 5
    instance-of v6, v4, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;

    if-eqz v6, :cond_2

    .line 6
    sget-boolean p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p1, :cond_1

    .line 7
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "ABORTING incremental build... found delta to jar/zip file"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    return v1

    .line 8
    :cond_2
    invoke-interface {v5}, Lorg/eclipse/core/resources/IResourceDelta;->getKind()I

    move-result v6

    if-eq v6, v3, :cond_6

    invoke-interface {v5}, Lorg/eclipse/core/resources/IResourceDelta;->getKind()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_3

    goto :goto_3

    .line 9
    :cond_3
    invoke-interface {v5}, Lorg/eclipse/core/resources/IResourceDelta;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v3

    .line 10
    invoke-interface {v5}, Lorg/eclipse/core/resources/IResourceDelta;->getAffectedChildren()[Lorg/eclipse/core/resources/IResourceDelta;

    move-result-object v5

    .line 11
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->isOutputFolder()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 12
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->newState:Lorg/eclipse/jdt/internal/core/builder/State;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    invoke-virtual {v6, p3}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->getLastState(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/internal/core/builder/State;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/eclipse/jdt/internal/core/builder/State;->getStructurallyChangedTypes(Lorg/eclipse/jdt/internal/core/builder/State;)Lorg/eclipse/jdt/internal/core/builder/StringSet;

    move-result-object v4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 13
    :goto_1
    array-length v6, v5

    move v7, v1

    :goto_2
    if-lt v7, v6, :cond_5

    .line 14
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->checkCancel()V

    goto :goto_4

    .line 15
    :cond_5
    aget-object v8, v5, v7

    invoke-virtual {p0, v8, v3, v4}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->findAffectedSourceFiles(Lorg/eclipse/core/resources/IResourceDelta;ILorg/eclipse/jdt/internal/core/builder/StringSet;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 16
    :cond_6
    :goto_3
    sget-boolean p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p1, :cond_7

    .line 17
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "ABORTING incremental build... found added/removed binary folder"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7
    return v1

    :cond_8
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public findSourceFiles(Lorg/eclipse/core/resources/IResourceDelta;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->makeOutputFolderConsistent:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    array-length v1, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-lt v3, v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    aget-object v4, v4, v3

    .line 4
    iget-boolean v5, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->makeOutputFolderConsistent:Z

    if-eqz v5, :cond_4

    iget-boolean v5, v4, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->hasIndependentOutputFolder:Z

    if-eqz v5, :cond_4

    iget-object v5, v4, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->binaryFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 5
    iget-object v5, v4, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->binaryFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v5, v4, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->binaryFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v5}, Lorg/eclipse/core/resources/IContainer;->getProjectRelativePath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v5

    invoke-interface {p1, v5}, Lorg/eclipse/core/resources/IResourceDelta;->findMember(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IResourceDelta;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 7
    invoke-interface {v5}, Lorg/eclipse/core/resources/IResourceDelta;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v6

    invoke-interface {v6}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v6

    .line 8
    invoke-interface {v5}, Lorg/eclipse/core/resources/IResourceDelta;->getAffectedChildren()[Lorg/eclipse/core/resources/IResourceDelta;

    move-result-object v5

    .line 9
    array-length v7, v5

    move v8, v2

    :goto_2
    if-lt v8, v7, :cond_2

    goto :goto_3

    .line 10
    :cond_2
    aget-object v9, v5, v8

    invoke-virtual {p0, v9, v4, v6}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->checkForClassFileChanges(Lorg/eclipse/core/resources/IResourceDelta;Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;I)Z

    move-result v9

    if-nez v9, :cond_3

    return v2

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 11
    :cond_4
    :goto_3
    iget-object v5, v4, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->sourceFolder:Lorg/eclipse/core/resources/IContainer;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->currentProject:Lorg/eclipse/core/resources/IProject;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 12
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v5

    invoke-interface {v5}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v5

    .line 13
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getAffectedChildren()[Lorg/eclipse/core/resources/IResourceDelta;

    move-result-object v6

    .line 14
    array-length v7, v6

    move v8, v2

    :goto_4
    if-lt v8, v7, :cond_5

    goto/16 :goto_6

    .line 15
    :cond_5
    aget-object v9, v6, v8

    invoke-interface {v9}, Lorg/eclipse/core/resources/IResourceDelta;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->isExcludedFromProject(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 16
    aget-object v9, v6, v8

    invoke-virtual {p0, v9, v4, v5}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->findSourceFiles(Lorg/eclipse/core/resources/IResourceDelta;Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;I)Z

    move-result v9

    if-nez v9, :cond_6

    return v2

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 17
    :cond_7
    iget-object v5, v4, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->sourceFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v5}, Lorg/eclipse/core/resources/IContainer;->getProjectRelativePath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v5

    invoke-interface {p1, v5}, Lorg/eclipse/core/resources/IResourceDelta;->findMember(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IResourceDelta;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 18
    invoke-interface {v5}, Lorg/eclipse/core/resources/IResourceDelta;->getKind()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_9

    .line 19
    sget-boolean p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p1, :cond_8

    .line 20
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "ABORTING incremental build... found removed source folder"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_8
    return v2

    .line 21
    :cond_9
    invoke-interface {v5}, Lorg/eclipse/core/resources/IResourceDelta;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v6

    invoke-interface {v6}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v6

    .line 22
    invoke-interface {v5}, Lorg/eclipse/core/resources/IResourceDelta;->getAffectedChildren()[Lorg/eclipse/core/resources/IResourceDelta;

    move-result-object v5

    .line 23
    :try_start_0
    array-length v7, v5

    move v8, v2

    :goto_5
    if-lt v8, v7, :cond_a

    goto :goto_6

    .line 24
    :cond_a
    aget-object v9, v5, v8

    invoke-virtual {p0, v9, v4, v6}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->findSourceFiles(Lorg/eclipse/core/resources/IResourceDelta;Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;I)Z

    move-result v9
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v9, :cond_b

    return v2

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Lorg/eclipse/core/runtime/CoreException;->getStatus()Lorg/eclipse/core/runtime/IStatus;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IStatus;->getCode()I

    move-result v0

    const/16 v1, 0x113

    if-ne v0, v1, :cond_d

    .line 26
    sget-boolean p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p1, :cond_c

    .line 27
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "ABORTING incremental build... found renamed package"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_c
    return v2

    .line 28
    :cond_d
    throw p1

    .line 29
    :cond_e
    :goto_6
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->checkCancel()V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1
.end method

.method public findSourceFiles(Lorg/eclipse/core/resources/IResourceDelta;Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    .line 30
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    .line 31
    iget-object v1, p2, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->exclusionPatterns:[[C

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-object v4, p2, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->inclusionPatterns:[[C

    if-eqz v4, :cond_1

    .line 32
    :cond_0
    iget-object v4, p2, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->inclusionPatterns:[[C

    invoke-static {v0, v4, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/core/resources/IResource;[[C[[C)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 33
    :goto_0
    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eq v4, v3, :cond_17

    if-eq v4, v7, :cond_2

    goto/16 :goto_c

    :cond_2
    if-eqz v1, :cond_3

    .line 34
    iget-object v4, p2, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->inclusionPatterns:[[C

    if-nez v4, :cond_3

    return v3

    .line 35
    :cond_3
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getKind()I

    move-result v4

    if-eq v4, v3, :cond_11

    if-eq v4, v7, :cond_4

    if-eq v4, v5, :cond_14

    goto/16 :goto_5

    :cond_4
    if-eqz v1, :cond_7

    .line 36
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getAffectedChildren()[Lorg/eclipse/core/resources/IResourceDelta;

    move-result-object v1

    .line 37
    array-length v4, v1

    move p1, v2

    :goto_1
    if-lt p1, v4, :cond_5

    return v3

    .line 38
    :cond_5
    aget-object v0, v1, p1

    invoke-virtual {p0, v0, p2, p3}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->findSourceFiles(Lorg/eclipse/core/resources/IResourceDelta;Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;I)Z

    move-result v0

    if-nez v0, :cond_6

    return v2

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 39
    :cond_7
    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {v0, p3}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    array-length v4, v1

    if-le v4, v3, :cond_d

    .line 41
    array-length v1, v1

    move v4, v2

    :goto_2
    if-lt v4, v1, :cond_8

    goto :goto_4

    .line 42
    :cond_8
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    aget-object v5, v5, v4

    iget-object v5, v5, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->sourceFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v5, v0}, Lorg/eclipse/core/resources/IContainer;->getFolder(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFolder;

    move-result-object v5

    invoke-interface {v5}, Lorg/eclipse/core/resources/IFolder;->exists()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 43
    iget-boolean v1, p2, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->hasIndependentOutputFolder:Z

    if-eqz v1, :cond_9

    .line 44
    iget-object v1, p2, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->binaryFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->createFolder(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/resources/IContainer;)Lorg/eclipse/core/resources/IContainer;

    .line 45
    :cond_9
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getAffectedChildren()[Lorg/eclipse/core/resources/IResourceDelta;

    move-result-object v5

    .line 46
    array-length v7, v5

    move p1, v2

    :goto_3
    if-lt p1, v7, :cond_a

    return v3

    .line 47
    :cond_a
    aget-object v0, v5, p1

    invoke-virtual {p0, v0, p2, p3}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->findSourceFiles(Lorg/eclipse/core/resources/IResourceDelta;Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;I)Z

    move-result v0

    if-nez v0, :cond_b

    return v2

    :cond_b
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 48
    :cond_d
    :goto_4
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getFlags()I

    move-result p3

    and-int/lit16 p3, p3, 0x2000

    if-eqz p3, :cond_e

    .line 49
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    iget-object p3, p3, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->workspaceRoot:Lorg/eclipse/core/resources/IWorkspaceRoot;

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getMovedToPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-interface {p3, v1}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getFolder(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFolder;

    move-result-object p3

    .line 50
    invoke-static {p3}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->removeProblemsAndTasksFor(Lorg/eclipse/core/resources/IResource;)V

    .line 51
    :cond_e
    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->binaryFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-interface {p2, v0}, Lorg/eclipse/core/resources/IContainer;->getFolder(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFolder;

    move-result-object p2

    .line 52
    invoke-interface {p2}, Lorg/eclipse/core/resources/IFolder;->exists()Z

    move-result p3

    if-eqz p3, :cond_f

    .line 53
    invoke-interface {p2, v3, v6}, Lorg/eclipse/core/resources/IFolder;->delete(ILorg/eclipse/core/runtime/IProgressMonitor;)V

    .line 54
    :cond_f
    sget-boolean p2, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p2, :cond_10

    .line 55
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Found removed package "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 56
    :cond_10
    invoke-virtual {p0, v0, v3}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->addDependentsOf(Lorg/eclipse/core/runtime/IPath;Z)V

    .line 57
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->newState:Lorg/eclipse/jdt/internal/core/builder/State;

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/core/builder/State;->removePackage(Lorg/eclipse/core/resources/IResourceDelta;)V

    :goto_5
    return v3

    :cond_11
    if-nez v1, :cond_14

    .line 58
    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {v0, p3}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    .line 59
    iget-object v1, p2, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->binaryFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->createFolder(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/resources/IContainer;)Lorg/eclipse/core/resources/IContainer;

    .line 60
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    array-length v1, v1

    if-le v1, v3, :cond_12

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->newState:Lorg/eclipse/jdt/internal/core/builder/State;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/core/builder/State;->isKnownPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 61
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v1, :cond_14

    .line 62
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Skipped dependents of added package "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 63
    :cond_12
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v1, :cond_13

    .line 64
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Found added package "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 65
    :cond_13
    invoke-virtual {p0, v0, v3}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->addDependentsOf(Lorg/eclipse/core/runtime/IPath;Z)V

    .line 66
    :cond_14
    :goto_6
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getAffectedChildren()[Lorg/eclipse/core/resources/IResourceDelta;

    move-result-object v4

    .line 67
    array-length v8, v4

    move p1, v2

    :goto_7
    if-lt p1, v8, :cond_15

    return v3

    .line 68
    :cond_15
    aget-object v0, v4, p1

    invoke-virtual {p0, v0, p2, p3}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->findSourceFiles(Lorg/eclipse/core/resources/IResourceDelta;Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;I)Z

    move-result v0

    if-nez v0, :cond_16

    return v2

    :cond_16
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_17
    if-eqz v1, :cond_18

    return v3

    .line 69
    :cond_18
    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getName()Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/util/Util;->isJavaLikeFileName(Ljava/lang/String;)Z

    move-result v4

    const/high16 v8, 0x100000

    if-eqz v4, :cond_25

    .line 71
    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-interface {v1, p3}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object p3

    invoke-interface {p3}, Lorg/eclipse/core/runtime/IPath;->removeFileExtension()Lorg/eclipse/core/runtime/IPath;

    move-result-object p3

    .line 72
    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getProjectRelativePath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getKind()I

    move-result v4

    if-eq v4, v3, :cond_21

    if-eq v4, v7, :cond_1c

    if-eq v4, v5, :cond_19

    goto :goto_8

    .line 74
    :cond_19
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getFlags()I

    move-result p3

    and-int/lit16 p3, p3, 0x100

    if-nez p3, :cond_1a

    .line 75
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getFlags()I

    move-result p1

    and-int/2addr p1, v8

    if-nez p1, :cond_1a

    return v3

    .line 76
    :cond_1a
    sget-boolean p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p1, :cond_1b

    .line 77
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "Compile this changed source file "

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    :cond_1b
    new-instance p1, Lorg/eclipse/jdt/internal/core/builder/SourceFile;

    check-cast v0, Lorg/eclipse/core/resources/IFile;

    invoke-direct {p1, v0, p2, v3}, Lorg/eclipse/jdt/internal/core/builder/SourceFile;-><init>(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;Z)V

    .line 79
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->sourceFiles:Ljava/util/LinkedHashSet;

    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :goto_8
    return v3

    .line 80
    :cond_1c
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->newState:Lorg/eclipse/jdt/internal/core/builder/State;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/builder/State;->getDefinedTypeNamesFor(Ljava/lang/String;)[[C

    move-result-object v0

    if-nez v0, :cond_1d

    .line 81
    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->binaryFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-virtual {p0, p3, p2}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->removeClassFile(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/resources/IContainer;)V

    .line 82
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getFlags()I

    move-result p2

    and-int/lit16 p2, p2, 0x2000

    if-eqz p2, :cond_20

    .line 83
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->workspaceRoot:Lorg/eclipse/core/resources/IWorkspaceRoot;

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getMovedToPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getFile(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFile;

    move-result-object p1

    .line 84
    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->removeProblemsAndTasksFor(Lorg/eclipse/core/resources/IResource;)V

    goto :goto_a

    .line 85
    :cond_1d
    sget-boolean p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p1, :cond_1e

    .line 86
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Found removed source file "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 87
    :cond_1e
    invoke-virtual {p0, p3, v3}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->addDependentsOf(Lorg/eclipse/core/runtime/IPath;Z)V

    .line 88
    array-length p1, v0

    if-lez p1, :cond_20

    .line 89
    invoke-interface {p3, v3}, Lorg/eclipse/core/runtime/IPath;->removeLastSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    .line 90
    array-length p3, v0

    :goto_9
    if-lt v2, p3, :cond_1f

    goto :goto_a

    .line 91
    :cond_1f
    new-instance v4, Ljava/lang/String;

    aget-object v5, v0, v2

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p1, v4}, Lorg/eclipse/core/runtime/IPath;->append(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    iget-object v5, p2, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->binaryFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-virtual {p0, v4, v5}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->removeClassFile(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/resources/IContainer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 92
    :cond_20
    :goto_a
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->newState:Lorg/eclipse/jdt/internal/core/builder/State;

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/core/builder/State;->removeLocator(Ljava/lang/String;)V

    return v3

    .line 93
    :cond_21
    sget-boolean p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p1, :cond_22

    .line 94
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Compile this added source file "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    :cond_22
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->sourceFiles:Ljava/util/LinkedHashSet;

    new-instance v2, Lorg/eclipse/jdt/internal/core/builder/SourceFile;

    check-cast v0, Lorg/eclipse/core/resources/IFile;

    invoke-direct {v2, v0, p2, v3}, Lorg/eclipse/jdt/internal/core/builder/SourceFile;-><init>(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;Z)V

    invoke-virtual {p1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 97
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->newState:Lorg/eclipse/jdt/internal/core/builder/State;

    invoke-virtual {p2, p1, v1}, Lorg/eclipse/jdt/internal/core/builder/State;->isDuplicateLocator(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_24

    .line 98
    sget-boolean p2, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p2, :cond_23

    .line 99
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Found added source file "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    :cond_23
    invoke-virtual {p0, p3, v3}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->addDependentsOf(Lorg/eclipse/core/runtime/IPath;Z)V

    :cond_24
    return v3

    .line 101
    :cond_25
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isClassFileName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 102
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->makeOutputFolderConsistent:Z

    if-eqz p1, :cond_27

    .line 103
    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-interface {p1, p3}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->removeFileExtension()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    .line 104
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->newState:Lorg/eclipse/jdt/internal/core/builder/State;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/core/builder/State;->isKnownType(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_27

    .line 105
    sget-boolean p2, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p2, :cond_26

    .line 106
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "MUST DO FULL BUILD. Found change to class file "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_26
    return v2

    :cond_27
    return v3

    .line 107
    :cond_28
    iget-boolean v1, p2, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->hasIndependentOutputFolder:Z

    if-eqz v1, :cond_36

    .line 108
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->javaBuilder:Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->filterExtraResource(Lorg/eclipse/core/resources/IResource;)Z

    move-result v1

    if-eqz v1, :cond_29

    return v3

    .line 109
    :cond_29
    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-interface {v1, p3}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object p3

    .line 110
    iget-object v1, p2, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->binaryFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v1, p3}, Lorg/eclipse/core/resources/IContainer;->getFile(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFile;

    move-result-object v1

    .line 111
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getKind()I

    move-result v2

    const-string v4, "Deleting existing file "

    if-eq v2, v3, :cond_32

    if-eq v2, v7, :cond_2f

    if-eq v2, v5, :cond_2a

    goto :goto_b

    .line 112
    :cond_2a
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x100

    if-nez v2, :cond_2b

    .line 113
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getFlags()I

    move-result p1

    and-int/2addr p1, v8

    if-nez p1, :cond_2b

    return v3

    .line 114
    :cond_2b
    invoke-interface {v1}, Lorg/eclipse/core/resources/IResource;->exists()Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 115
    sget-boolean p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p1, :cond_2c

    .line 116
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 117
    :cond_2c
    invoke-interface {v1, v3, v6}, Lorg/eclipse/core/resources/IResource;->delete(ILorg/eclipse/core/runtime/IProgressMonitor;)V

    .line 118
    :cond_2d
    sget-boolean p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p1, :cond_2e

    .line 119
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Copying changed file "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 120
    :cond_2e
    invoke-interface {p3, v3}, Lorg/eclipse/core/runtime/IPath;->removeLastSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->binaryFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->createFolder(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/resources/IContainer;)Lorg/eclipse/core/resources/IContainer;

    .line 121
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->copyResource(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/core/resources/IResource;)V

    :goto_b
    return v3

    .line 122
    :cond_2f
    invoke-interface {v1}, Lorg/eclipse/core/resources/IResource;->exists()Z

    move-result p1

    if-eqz p1, :cond_31

    .line 123
    sget-boolean p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p1, :cond_30

    .line 124
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Deleting removed file "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 125
    :cond_30
    invoke-interface {v1, v3, v6}, Lorg/eclipse/core/resources/IResource;->delete(ILorg/eclipse/core/runtime/IProgressMonitor;)V

    :cond_31
    return v3

    .line 126
    :cond_32
    invoke-interface {v1}, Lorg/eclipse/core/resources/IResource;->exists()Z

    move-result p1

    if-eqz p1, :cond_34

    .line 127
    sget-boolean p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p1, :cond_33

    .line 128
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 129
    :cond_33
    invoke-interface {v1, v3, v6}, Lorg/eclipse/core/resources/IResource;->delete(ILorg/eclipse/core/runtime/IProgressMonitor;)V

    .line 130
    :cond_34
    sget-boolean p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p1, :cond_35

    .line 131
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Copying added file "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 132
    :cond_35
    invoke-interface {p3, v3}, Lorg/eclipse/core/runtime/IPath;->removeLastSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->binaryFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->createFolder(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/resources/IContainer;)Lorg/eclipse/core/resources/IContainer;

    .line 133
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->copyResource(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/core/resources/IResource;)V

    :cond_36
    :goto_c
    return v3
.end method

.method public finishedWith(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/CompilationResult;[CLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 10

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->newState:Lorg/eclipse/jdt/internal/core/builder/State;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/builder/State;->getDefinedTypeNamesFor(Ljava/lang/String;)[[C

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-array v0, v2, [[C

    aput-object p3, v0, v1

    :cond_0
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v1

    :goto_0
    if-lt v5, v3, :cond_1

    invoke-super/range {p0 .. p5}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->finishedWith(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/CompilationResult;[CLjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void

    :cond_1
    aget-object v6, v0, v5

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v1

    :goto_1
    if-lt v8, v7, :cond_5

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getCompilationUnit()Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    move-result-object v7

    check-cast v7, Lorg/eclipse/jdt/internal/core/builder/SourceFile;

    if-nez v4, :cond_2

    iget-object v4, v7, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->sourceLocation:Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->sourceFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v4}, Lorg/eclipse/core/resources/IContainer;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v4

    iget-object v8, v7, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->resource:Lorg/eclipse/core/resources/IFile;

    invoke-interface {v8}, Lorg/eclipse/core/resources/IFile;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v8

    invoke-interface {v8, v4}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-interface {v4, v2}, Lorg/eclipse/core/runtime/IPath;->removeLastSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    :cond_2
    iget-object v8, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->secondaryTypesToRemove:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    if-nez v8, :cond_3

    new-instance v8, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-direct {v8}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>()V

    iput-object v8, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->secondaryTypesToRemove:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    :cond_3
    iget-object v8, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->secondaryTypesToRemove:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object v9, v7, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->sourceLocation:Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    iget-object v9, v9, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->binaryFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-virtual {v8, v9}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-nez v8, :cond_4

    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    :cond_4
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v6}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v4, v9}, Lorg/eclipse/core/runtime/IPath;->append(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->secondaryTypesToRemove:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object v7, v7, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->sourceLocation:Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    iget-object v7, v7, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->binaryFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-virtual {v6, v7, v8}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    invoke-virtual {p4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [C

    invoke-static {v6, v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v9

    if-eqz v9, :cond_6

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method public processAnnotationResults([Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;)V
    .locals 6

    array-length v0, p1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    return-void

    :cond_0
    aget-object v1, p1, v0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;->deletedFiles:[Lorg/eclipse/core/resources/IFile;

    if-eqz v2, :cond_2

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->deleteGeneratedFiles([Lorg/eclipse/core/resources/IFile;)V

    :cond_2
    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;->addedFiles:[Lorg/eclipse/core/resources/IFile;

    if-eqz v2, :cond_5

    array-length v3, v2

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_4

    goto :goto_2

    :cond_4
    aget-object v4, v2, v3

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->findSourceFile(Lorg/eclipse/core/resources/IFile;Z)Lorg/eclipse/jdt/internal/core/builder/SourceFile;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->sourceFiles:Ljava/util/LinkedHashSet;

    invoke-virtual {v5, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->sourceFiles:Ljava/util/LinkedHashSet;

    invoke-virtual {v5, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    :goto_2
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->recordParticipantResult(Lorg/eclipse/jdt/internal/core/builder/CompilationParticipantResult;)V

    goto :goto_0
.end method

.method public removeClassFile(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/resources/IContainer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->lastSegment()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->newState:Lorg/eclipse/jdt/internal/core/builder/State;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/builder/State;->removeQualifiedTypeName(Ljava/lang/String;)V

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Found removed type "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1, v2}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->addDependentsOf(Lorg/eclipse/core/runtime/IPath;Z)V

    :cond_1
    const-string v0, "class"

    invoke-interface {p1, v0}, Lorg/eclipse/core/runtime/IPath;->addFileExtension(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/eclipse/core/resources/IContainer;->getFile(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFile;

    move-result-object p2

    invoke-interface {p2}, Lorg/eclipse/core/resources/IFile;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Deleting class file of removed type "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x0

    invoke-interface {p2, v2, p1}, Lorg/eclipse/core/resources/IFile;->delete(ILorg/eclipse/core/runtime/IProgressMonitor;)V

    :cond_3
    return-void
.end method

.method public removeSecondaryTypes()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->secondaryTypesToRemove:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->keyTable:[Ljava/lang/Object;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->valueTable:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v2, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->secondaryTypesToRemove:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->previousSourceFiles:Ljava/util/LinkedHashSet;

    if-eqz v1, :cond_3

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->previousSourceFiles:Ljava/util/LinkedHashSet;

    goto :goto_3

    :cond_0
    aget-object v5, v1, v4

    check-cast v5, Lorg/eclipse/core/resources/IContainer;

    if-eqz v5, :cond_2

    aget-object v6, v0, v4

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v3

    :goto_1
    if-lt v8, v7, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {p0, v9, v5}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->removeClassFile(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/resources/IContainer;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    return-void
.end method

.method public resetCollections()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->sourceFiles:Ljava/util/LinkedHashSet;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashSet;

    const/16 v2, 0x21

    invoke-direct {v0, v2}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->sourceFiles:Ljava/util/LinkedHashSet;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->previousSourceFiles:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->qualifiedStrings:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->simpleStrings:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->rootStrings:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->hasStructuralChanges:Z

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->sourceFiles:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/LinkedHashSet;

    :goto_0
    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->previousSourceFiles:Ljava/util/LinkedHashSet;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->sourceFiles:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->qualifiedStrings:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->simpleStrings:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->rootStrings:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->workQueue:Lorg/eclipse/jdt/internal/core/builder/WorkQueue;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/builder/WorkQueue;->clear()V

    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "incremental image builder for:\n\tnew state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->newState:Lorg/eclipse/jdt/internal/core/builder/State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateProblemsFor(Lorg/eclipse/jdt/internal/core/builder/SourceFile;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->getMainTypeName()[C

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->PACKAGE_INFO_NAME:[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->resource:Lorg/eclipse/core/resources/IFile;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IFile;->getParent()Lorg/eclipse/core/resources/IContainer;

    move-result-object v0

    const-string v2, "org.eclipse.jdt.core.problem"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, v3}, Lorg/eclipse/core/resources/IResource;->findMarkers(Ljava/lang/String;ZI)[Lorg/eclipse/core/resources/IMarker;

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;

    new-instance p2, Lorg/eclipse/jdt/internal/core/builder/AbortIncrementalBuildException;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {p2, v0}, Lorg/eclipse/jdt/internal/core/builder/AbortIncrementalBuildException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;-><init>(ZLjava/lang/RuntimeException;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->resource:Lorg/eclipse/core/resources/IFile;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->getProblemsFor(Lorg/eclipse/core/resources/IResource;)[Lorg/eclipse/core/resources/IMarker;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getProblems()[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    move-result-object p2

    if-nez p2, :cond_2

    array-length v1, v0

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    invoke-virtual {v1, v0, p2}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->updateProblemCounts([Lorg/eclipse/core/resources/IMarker;[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->resource:Lorg/eclipse/core/resources/IFile;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->removeProblemsFor(Lorg/eclipse/core/resources/IResource;)V

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->storeProblemsFor(Lorg/eclipse/jdt/internal/core/builder/SourceFile;[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    return-void
.end method

.method public updateTasksFor(Lorg/eclipse/jdt/internal/core/builder/SourceFile;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->resource:Lorg/eclipse/core/resources/IFile;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->getTasksFor(Lorg/eclipse/core/resources/IResource;)[Lorg/eclipse/core/resources/IMarker;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getTasks()[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    move-result-object p2

    if-nez p2, :cond_0

    array-length v0, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->resource:Lorg/eclipse/core/resources/IFile;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->removeTasksFor(Lorg/eclipse/core/resources/IResource;)V

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->storeTasksFor(Lorg/eclipse/jdt/internal/core/builder/SourceFile;[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    return-void
.end method

.method public writeClassFileCheck(Lorg/eclipse/core/resources/IFile;Ljava/lang/String;[B)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->getResourceContentsAsByteArray(Lorg/eclipse/core/resources/IFile;)[B

    move-result-object v1

    array-length v2, p3

    array-length v3, v1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    array-length v2, p3

    :cond_0
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_1

    return v4

    :cond_1
    aget-byte v3, p3, v2

    aget-byte v5, v1, v2

    if-eq v3, v5, :cond_0

    :cond_2
    invoke-interface {p1}, Lorg/eclipse/core/resources/IFile;->getLocationURI()Ljava/net/URI;

    move-result-object p1

    if-nez p1, :cond_3

    return v4

    :cond_3
    invoke-virtual {p1}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;-><init>([B[C)V

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->isLocal()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->isAnonymous()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v2, p3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->hasStructuralChanges([B)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-boolean p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p1, :cond_4

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Type has structural changes "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    new-instance p1, Lorg/eclipse/core/runtime/Path;

    invoke-direct {p1, p2}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->addDependentsOf(Lorg/eclipse/core/runtime/IPath;Z)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->newState:Lorg/eclipse/jdt/internal/core/builder/State;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/builder/State;->wasStructurallyChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Lorg/eclipse/core/runtime/Path;

    invoke-direct {p1, p2}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->addDependentsOf(Lorg/eclipse/core/runtime/IPath;Z)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->newState:Lorg/eclipse/jdt/internal/core/builder/State;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/builder/State;->wasStructurallyChanged(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return v0
.end method

.method public writeClassFileContents(Lorg/eclipse/jdt/internal/compiler/ClassFile;Lorg/eclipse/core/resources/IFile;Ljava/lang/String;ZLorg/eclipse/jdt/internal/core/builder/SourceFile;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->getBytes()[B

    move-result-object p1

    invoke-interface {p2}, Lorg/eclipse/core/resources/IFile;->exists()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p0, p2, p3, p1}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->writeClassFileCheck(Lorg/eclipse/core/resources/IFile;Ljava/lang/String;[B)Z

    move-result p3

    if-nez p3, :cond_1

    iget-boolean p3, p5, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->updateClassFile:Z

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p1, :cond_7

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Skipped over unchanged class file "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/eclipse/core/resources/IFile;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    sget-boolean p3, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p3, :cond_2

    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Writing changed class file "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/eclipse/core/resources/IFile;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    invoke-interface {p2}, Lorg/eclipse/core/resources/IFile;->isDerived()Z

    move-result p3

    if-nez p3, :cond_3

    invoke-interface {p2, v3, v2}, Lorg/eclipse/core/resources/IFile;->setDerived(ZLorg/eclipse/core/runtime/IProgressMonitor;)V

    :cond_3
    new-instance p3, Ljava/io/ByteArrayInputStream;

    invoke-direct {p3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p2, p3, v3, v1, v2}, Lorg/eclipse/core/resources/IFile;->setContents(Ljava/io/InputStream;ZZLorg/eclipse/core/runtime/IProgressMonitor;)V

    goto :goto_1

    :cond_4
    if-eqz p4, :cond_5

    new-instance p4, Lorg/eclipse/core/runtime/Path;

    invoke-direct {p4, p3}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p4, v3}, Lorg/eclipse/jdt/internal/core/builder/IncrementalImageBuilder;->addDependentsOf(Lorg/eclipse/core/runtime/IPath;Z)V

    :cond_5
    sget-boolean p4, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p4, :cond_6

    sget-object p4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Writing new class file "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/eclipse/core/resources/IFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    const/16 p4, 0x401

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p2, v0, p4, v2}, Lorg/eclipse/core/resources/IFile;->create(Ljava/io/InputStream;ILorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/eclipse/core/runtime/CoreException;->getStatus()Lorg/eclipse/core/runtime/IStatus;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/core/runtime/IStatus;->getCode()I

    move-result v4

    const/16 v5, 0x113

    if-ne v4, v5, :cond_c

    invoke-virtual {v0}, Lorg/eclipse/core/runtime/CoreException;->getStatus()Lorg/eclipse/core/runtime/IStatus;

    move-result-object v0

    instance-of v4, v0, Lorg/eclipse/core/resources/IResourceStatus;

    if-eqz v4, :cond_b

    check-cast v0, Lorg/eclipse/core/resources/IResourceStatus;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IResourceStatus;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->removeFileExtension()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/core/runtime/IPath;->lastSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->newState:Lorg/eclipse/jdt/internal/core/builder/State;

    invoke-virtual {p5}, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->typeLocator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/core/builder/State;->getDefinedTypeNamesFor(Ljava/lang/String;)[[C

    move-result-object v5

    if-nez v5, :cond_8

    invoke-virtual {p5}, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->getMainTypeName()[C

    move-result-object p5

    invoke-static {p5, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p5

    goto :goto_3

    :cond_8
    array-length p5, v5

    move v6, v1

    :goto_2
    if-lt v6, p5, :cond_9

    move p5, v1

    goto :goto_3

    :cond_9
    aget-object v7, v5, v6

    invoke-static {v7, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v7

    if-eqz v7, :cond_a

    move p5, v3

    :goto_3
    if-eqz p5, :cond_b

    invoke-interface {p2}, Lorg/eclipse/core/resources/IFile;->getParent()Lorg/eclipse/core/resources/IContainer;

    move-result-object p5

    new-instance v4, Lorg/eclipse/core/runtime/Path;

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->lastSegment()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {p5, v4}, Lorg/eclipse/core/resources/IContainer;->getFile(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFile;

    move-result-object p5

    invoke-interface {p5, v3, v1, v2}, Lorg/eclipse/core/resources/IFile;->delete(ZZLorg/eclipse/core/runtime/IProgressMonitor;)V

    :try_start_1
    new-instance p5, Ljava/io/ByteArrayInputStream;

    invoke-direct {p5, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p2, p5, p4, v2}, Lorg/eclipse/core/resources/IFile;->create(Ljava/io/InputStream;ILorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v3

    :catch_1
    if-eqz v1, :cond_b

    return-void

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_b
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;

    new-instance p2, Lorg/eclipse/jdt/internal/core/builder/AbortIncrementalBuildException;

    invoke-direct {p2, p3}, Lorg/eclipse/jdt/internal/core/builder/AbortIncrementalBuildException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v3, p2}, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;-><init>(ZLjava/lang/RuntimeException;)V

    throw p1

    :cond_c
    throw v0
.end method
