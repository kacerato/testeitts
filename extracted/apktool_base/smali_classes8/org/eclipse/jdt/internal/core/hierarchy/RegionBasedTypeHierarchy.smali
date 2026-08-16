.class public Lorg/eclipse/jdt/internal/core/hierarchy/RegionBasedTypeHierarchy;
.super Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;
.source "SourceFile"


# instance fields
.field protected region:Lorg/eclipse/jdt/core/IRegion;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/IRegion;[Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/IType;Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p3, p2, v0, p4}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;-><init>(Lorg/eclipse/jdt/core/IType;[Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Z)V

    new-instance p2, Lorg/eclipse/jdt/internal/core/Region;

    invoke-direct {p2}, Lorg/eclipse/jdt/internal/core/Region;-><init>()V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IRegion;->getElements()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    array-length p3, p1

    const/4 p4, 0x0

    move v0, p4

    :goto_0
    if-lt v0, p3, :cond_1

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/RegionBasedTypeHierarchy;->region:Lorg/eclipse/jdt/core/IRegion;

    array-length p2, p1

    if-lez p2, :cond_0

    aget-object p1, p1, p4

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->project:Lorg/eclipse/jdt/core/IJavaProject;

    :cond_0
    return-void

    :cond_1
    aget-object v1, p1, v0

    invoke-virtual {p2, v1}, Lorg/eclipse/jdt/internal/core/Region;->add(Lorg/eclipse/jdt/core/IJavaElement;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private pruneDeadBranches([Lorg/eclipse/jdt/core/IType;)V
    .locals 4

    .line 7
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    .line 8
    :cond_0
    aget-object v2, p1, v1

    .line 9
    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/core/hierarchy/RegionBasedTypeHierarchy;->pruneDeadBranches(Lorg/eclipse/jdt/core/IType;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/hierarchy/RegionBasedTypeHierarchy;->region:Lorg/eclipse/jdt/core/IRegion;

    invoke-interface {v3, v2}, Lorg/eclipse/jdt/core/IRegion;->contains(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 10
    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/hierarchy/RegionBasedTypeHierarchy;->removeType(Lorg/eclipse/jdt/core/IType;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private pruneDeadBranches(Lorg/eclipse/jdt/core/IType;)Z
    .locals 2

    .line 3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->typeToSubtypes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/TypeVector;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/TypeVector;->copy()Lorg/eclipse/jdt/internal/core/TypeVector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/TypeVector;->elements()[Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/hierarchy/RegionBasedTypeHierarchy;->pruneDeadBranches([Lorg/eclipse/jdt/core/IType;)V

    .line 5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->typeToSubtypes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/TypeVector;

    if-eqz p1, :cond_1

    .line 6
    iget p1, p1, Lorg/eclipse/jdt/internal/core/TypeVector;->size:I

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    return v1
.end method


# virtual methods
.method public compute()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;,
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    new-instance v0, Lorg/eclipse/jdt/internal/core/hierarchy/RegionBasedHierarchyBuilder;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/hierarchy/RegionBasedHierarchyBuilder;-><init>(Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;)V

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->computeSubtypes:Z

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->build(Z)V

    return-void
.end method

.method public initializeRegions()V
    .locals 5

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->initializeRegions()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/RegionBasedTypeHierarchy;->region:Lorg/eclipse/jdt/core/IRegion;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IRegion;->getElements()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    aget-object v2, v0, v1

    instance-of v3, v2, Lorg/eclipse/jdt/core/IOpenable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->files:Ljava/util/Map;

    check-cast v2, Lorg/eclipse/jdt/core/IOpenable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    check-cast v2, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/JavaElement;->getOpenableParent()Lorg/eclipse/jdt/core/IOpenable;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/Openable;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->files:Ljava/util/Map;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->checkCanceled()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isAffectedByOpenable(Lorg/eclipse/jdt/core/IJavaElementDelta;Lorg/eclipse/jdt/core/IJavaElement;I)Z
    .locals 1

    instance-of v0, p2, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isWorkingCopy()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->isAffectedByOpenable(Lorg/eclipse/jdt/core/IJavaElementDelta;Lorg/eclipse/jdt/core/IJavaElement;I)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->focusType:Lorg/eclipse/jdt/core/IType;

    if-nez v0, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/RegionBasedTypeHierarchy;->region:Lorg/eclipse/jdt/core/IRegion;

    invoke-interface {p1, p2}, Lorg/eclipse/jdt/core/IRegion;->contains(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result p1

    return p1

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->isAffectedByOpenable(Lorg/eclipse/jdt/core/IJavaElementDelta;Lorg/eclipse/jdt/core/IJavaElement;I)Z

    move-result p1

    return p1
.end method

.method public javaProject()Lorg/eclipse/jdt/core/IJavaProject;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->project:Lorg/eclipse/jdt/core/IJavaProject;

    return-object v0
.end method

.method public pruneDeadBranches()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->getRootClasses()[Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/hierarchy/RegionBasedTypeHierarchy;->pruneDeadBranches([Lorg/eclipse/jdt/core/IType;)V

    .line 2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->getRootInterfaces()[Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/hierarchy/RegionBasedTypeHierarchy;->pruneDeadBranches([Lorg/eclipse/jdt/core/IType;)V

    return-void
.end method

.method public removeType(Lorg/eclipse/jdt/core/IType;)V
    .locals 5

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->getSubtypes(Lorg/eclipse/jdt/core/IType;)[Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->typeToSubtypes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v2, v1

    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_0

    goto :goto_1

    :cond_0
    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/core/hierarchy/RegionBasedTypeHierarchy;->removeType(Lorg/eclipse/jdt/core/IType;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->classToSuperclass:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IType;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->typeToSubtypes:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/TypeVector;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/TypeVector;->remove(Lorg/eclipse/jdt/core/IType;)Lorg/eclipse/jdt/core/IType;

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->typeToSuperInterfaces:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jdt/core/IType;

    if-eqz v0, :cond_5

    array-length v2, v0

    :goto_2
    if-lt v1, v2, :cond_3

    goto :goto_3

    :cond_3
    aget-object v3, v0, v1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->typeToSubtypes:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/core/TypeVector;

    if-eqz v3, :cond_4

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/core/TypeVector;->remove(Lorg/eclipse/jdt/core/IType;)Lorg/eclipse/jdt/core/IType;

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->interfaces:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
