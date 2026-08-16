.class public Lorg/eclipse/jdt/internal/core/hierarchy/RegionBasedHierarchyBuilder;
.super Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;-><init>(Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;)V

    return-void
.end method

.method private createTypeHierarchyBasedOnRegion(Ljava/util/HashMap;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz p2, :cond_0

    const-string v1, ""

    mul-int/lit8 v2, v0, 0x2

    invoke-interface {p2, v1, v2}, Lorg/eclipse/core/runtime/IProgressMonitor;->beginTask(Ljava/lang/String;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->infoToHandle:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lorg/eclipse/core/runtime/IProgressMonitor;->done()V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lorg/eclipse/jdt/internal/core/Openable;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->workingCopies:[Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->newSearchableNameEnvironment([Lorg/eclipse/jdt/core/ICompilationUnit;)Lorg/eclipse/jdt/internal/core/SearchableEnvironment;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->hierarchyResolver:Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, p2}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->resolve([Lorg/eclipse/jdt/internal/core/Openable;Ljava/util/HashSet;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_2
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_2
    if-eqz p2, :cond_3

    invoke-interface {p2}, Lorg/eclipse/core/runtime/IProgressMonitor;->done()V

    :cond_3
    throw p1
.end method

.method private determineOpenablesInRegion(Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/util/HashMap;
    .locals 7

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    check-cast v1, Lorg/eclipse/jdt/internal/core/hierarchy/RegionBasedTypeHierarchy;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/hierarchy/RegionBasedTypeHierarchy;->region:Lorg/eclipse/jdt/core/IRegion;

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IRegion;->getElements()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    array-length v2, v1

    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-interface {p1, v3, v2}, Lorg/eclipse/core/runtime/IProgressMonitor;->beginTask(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-lt v3, v2, :cond_2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IProgressMonitor;->done()V

    :cond_1
    return-object v0

    :cond_2
    :try_start_1
    aget-object v4, v1, v3

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-nez v6, :cond_3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-interface {v4}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    check-cast v4, Lorg/eclipse/jdt/core/IType;

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IMember;->isBinary()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IType;->getClassFile()Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-interface {v4}, Lorg/eclipse/jdt/core/IMember;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_1
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_2
    check-cast v4, Lorg/eclipse/jdt/core/IPackageFragment;

    invoke-direct {p0, v4, v6}, Lorg/eclipse/jdt/internal/core/hierarchy/RegionBasedHierarchyBuilder;->injectAllOpenablesForPackageFragment(Lorg/eclipse/jdt/core/IPackageFragment;Ljava/util/ArrayList;)V

    goto :goto_2

    :pswitch_3
    check-cast v4, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    invoke-direct {p0, v4, v6}, Lorg/eclipse/jdt/internal/core/hierarchy/RegionBasedHierarchyBuilder;->injectAllOpenablesForPackageFragmentRoot(Lorg/eclipse/jdt/core/IPackageFragmentRoot;Ljava/util/ArrayList;)V

    goto :goto_2

    :pswitch_4
    check-cast v4, Lorg/eclipse/jdt/core/IJavaProject;

    invoke-direct {p0, v4, v6}, Lorg/eclipse/jdt/internal/core/hierarchy/RegionBasedHierarchyBuilder;->injectAllOpenablesForJavaProject(Lorg/eclipse/jdt/core/IJavaProject;Ljava/util/ArrayList;)V

    :goto_2
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v4}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->worked(Lorg/eclipse/core/runtime/IProgressMonitor;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :goto_3
    if-eqz p1, :cond_5

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IProgressMonitor;->done()V

    :cond_5
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private injectAllOpenablesForJavaProject(Lorg/eclipse/jdt/core/IJavaProject;Ljava/util/ArrayList;)V
    .locals 2

    :try_start_0
    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPackageFragmentRoots()[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_1

    goto :goto_1

    :cond_1
    aget-object v1, p1, v0

    invoke-direct {p0, v1, p2}, Lorg/eclipse/jdt/internal/core/hierarchy/RegionBasedHierarchyBuilder;->injectAllOpenablesForPackageFragmentRoot(Lorg/eclipse/jdt/core/IPackageFragmentRoot;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :goto_1
    return-void
.end method

.method private injectAllOpenablesForPackageFragment(Lorg/eclipse/jdt/core/IPackageFragment;Ljava/util/ArrayList;)V
    .locals 3

    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->getKind()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IPackageFragment;->getCompilationUnits()[Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p1

    array-length v0, p1

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_2

    :cond_0
    aget-object v2, p1, v1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IPackageFragment;->getOrdinaryClassFiles()[Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    move-result-object p1

    array-length v0, p1

    :goto_1
    if-lt v1, v0, :cond_2

    goto :goto_2

    :cond_2
    aget-object v2, p1, v1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    :cond_3
    :goto_2
    return-void
.end method

.method private injectAllOpenablesForPackageFragmentRoot(Lorg/eclipse/jdt/core/IPackageFragmentRoot;Ljava/util/ArrayList;)V
    .locals 2

    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IParent;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    aget-object v1, p1, v0

    check-cast v1, Lorg/eclipse/jdt/core/IPackageFragment;

    invoke-direct {p0, v1, p2}, Lorg/eclipse/jdt/internal/core/hierarchy/RegionBasedHierarchyBuilder;->injectAllOpenablesForPackageFragment(Lorg/eclipse/jdt/core/IPackageFragment;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    return-void
.end method


# virtual methods
.method public build(Z)V
    .locals 3

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->cacheZipFiles(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->focusType:Lorg/eclipse/jdt/core/IType;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->initialize(I)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->buildSupertypes()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    iget-object p1, v1, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    const/16 v1, 0x1e

    invoke-virtual {p1, v1}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/RegionBasedHierarchyBuilder;->determineOpenablesInRegion(Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->initialize(I)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    const/16 v2, 0x46

    invoke-virtual {v1, v2}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/hierarchy/RegionBasedHierarchyBuilder;->createTypeHierarchyBasedOnRegion(Ljava/util/HashMap;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    check-cast p1, Lorg/eclipse/jdt/internal/core/hierarchy/RegionBasedTypeHierarchy;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/hierarchy/RegionBasedTypeHierarchy;->pruneDeadBranches()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->flushZipFiles(Ljava/lang/Object;)V

    return-void

    :goto_2
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->flushZipFiles(Ljava/lang/Object;)V

    throw p1
.end method
