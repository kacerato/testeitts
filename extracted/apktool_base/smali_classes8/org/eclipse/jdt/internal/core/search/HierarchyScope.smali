.class public Lorg/eclipse/jdt/internal/core/search/HierarchyScope;
.super Lorg/eclipse/jdt/internal/core/search/AbstractSearchScope;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;


# instance fields
.field private allowMemberAndEnclosingTypes:Z

.field protected elementCount:I

.field protected elements:[Lorg/eclipse/core/resources/IResource;

.field private enclosingProjectsAndJars:[Lorg/eclipse/core/runtime/IPath;

.field private focusPath:Ljava/lang/String;

.field public focusType:Lorg/eclipse/jdt/core/IType;

.field private hierarchy:Lorg/eclipse/jdt/core/ITypeHierarchy;

.field private includeFocusType:Z

.field private javaProject:Lorg/eclipse/jdt/core/IJavaProject;

.field public needsRefresh:Z

.field private owner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

.field private resourcePaths:Ljava/util/HashSet;

.field private subTypes:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/core/WorkingCopyOwner;ZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3}, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;-><init>(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V

    .line 2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->javaProject:Lorg/eclipse/jdt/core/IJavaProject;

    if-eqz p4, :cond_0

    .line 3
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->subTypes:Ljava/util/HashSet;

    .line 4
    :cond_0
    iput-boolean p6, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->includeFocusType:Z

    xor-int/lit8 p1, p5, 0x1

    .line 5
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->allowMemberAndEnclosingTypes:Z

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/AbstractSearchScope;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->subTypes:Ljava/util/HashSet;

    .line 8
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->javaProject:Lorg/eclipse/jdt/core/IJavaProject;

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->allowMemberAndEnclosingTypes:Z

    .line 10
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->includeFocusType:Z

    .line 11
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->focusType:Lorg/eclipse/jdt/core/IType;

    .line 12
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->owner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    .line 13
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->computeProjectsAndJars(Lorg/eclipse/jdt/core/IType;)[Lorg/eclipse/core/runtime/IPath;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->enclosingProjectsAndJars:[Lorg/eclipse/core/runtime/IPath;

    .line 14
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getPackageFragment()Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object p2

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    .line 15
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->isArchive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 16
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    .line 17
    invoke-static {v1, v0}, Lorg/eclipse/jdt/internal/core/JavaModel;->getTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object v2

    .line 18
    instance-of v3, v2, Lorg/eclipse/core/resources/IFile;

    if-eqz v3, :cond_0

    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 20
    :cond_0
    instance-of v1, v2, Ljava/io/File;

    if-eqz v1, :cond_2

    .line 21
    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 22
    :goto_0
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->getModuleDescription()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object p2

    .line 23
    const-string v2, ".class"

    const/16 v3, 0x2f

    const/16 v4, 0x2e

    const-string v5, "|"

    if-eqz p2, :cond_1

    .line 24
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p2

    .line 25
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 32
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->focusPath:Ljava/lang/String;

    goto :goto_1

    .line 33
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 38
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->focusPath:Ljava/lang/String;

    goto :goto_1

    :cond_2
    return-void

    .line 39
    :cond_3
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->focusPath:Ljava/lang/String;

    .line 40
    :goto_1
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->needsRefresh:Z

    return-void
.end method

.method private buildResourceVector()V
    .locals 14

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->subTypes:Ljava/util/HashSet;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->hierarchy:Lorg/eclipse/jdt/core/ITypeHierarchy;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->focusType:Lorg/eclipse/jdt/core/IType;

    invoke-interface {v2, v4}, Lorg/eclipse/jdt/core/ITypeHierarchy;->getAllSubtypes(Lorg/eclipse/jdt/core/IType;)[Lorg/eclipse/jdt/core/IType;

    move-result-object v2

    iget-boolean v4, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->includeFocusType:Z

    if-eqz v4, :cond_1

    array-length v4, v2

    add-int/lit8 v5, v4, 0x1

    new-array v5, v5, [Lorg/eclipse/jdt/core/IType;

    invoke-static {v2, v3, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->focusType:Lorg/eclipse/jdt/core/IType;

    aput-object v2, v5, v4

    move-object v2, v5

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->hierarchy:Lorg/eclipse/jdt/core/ITypeHierarchy;

    invoke-interface {v2}, Lorg/eclipse/jdt/core/ITypeHierarchy;->getAllTypes()[Lorg/eclipse/jdt/core/IType;

    move-result-object v2

    :cond_1
    :goto_0
    move v4, v3

    :goto_1
    array-length v5, v2

    if-lt v4, v5, :cond_3

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Lorg/eclipse/core/runtime/IPath;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->enclosingProjectsAndJars:[Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->enclosingProjectsAndJars:[Lorg/eclipse/core/runtime/IPath;

    add-int/lit8 v1, v3, 0x1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/core/runtime/IPath;

    aput-object v2, v0, v3

    move v3, v1

    goto :goto_2

    :cond_3
    aget-object v5, v2, v4

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->subTypes:Ljava/util/HashSet;

    if-eqz v6, :cond_4

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object v6, v5

    check-cast v6, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/JavaElement;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_5

    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->add(Lorg/eclipse/core/resources/IResource;)V

    :cond_5
    invoke-interface {v5}, Lorg/eclipse/jdt/core/IType;->getPackageFragment()Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object v6

    invoke-interface {v6}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    instance-of v7, v6, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;

    if-eqz v7, :cond_8

    move-object v7, v6

    check-cast v7, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lorg/eclipse/jdt/internal/core/JavaModel;->getTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Lorg/eclipse/core/resources/IFile;

    if-eqz v9, :cond_6

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_6
    instance-of v9, v8, Ljava/io/File;

    if-eqz v9, :cond_9

    check-cast v8, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    :goto_3
    invoke-interface {v6}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->getModuleDescription()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v6

    const-string v9, ".class"

    const/16 v10, 0x2f

    const/16 v11, 0x2e

    const-string v12, "|"

    if-eqz v6, :cond_7

    invoke-interface {v6}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v6

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v13, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lorg/eclipse/jdt/core/IType;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v11, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lorg/eclipse/jdt/core/IType;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v11, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_4
    iget-object v8, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->resourcePaths:Ljava/util/HashSet;

    invoke-virtual {v8, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_8
    invoke-interface {v5}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v6

    invoke-interface {v6}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v6

    invoke-interface {v6}, Lorg/eclipse/core/resources/IProject;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1
.end method

.method private computeDependents(Lorg/eclipse/jdt/core/IJavaProject;Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 7

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/core/resources/IProject;->getReferencingProjects()[Lorg/eclipse/core/resources/IProject;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_1

    return-void

    :cond_1
    :try_start_0
    aget-object v2, p1, v1

    invoke-static {v2}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaProject;->getPackageFragmentRoots()[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v3

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move v4, v0

    :goto_1
    array-length v5, v3

    if-lt v4, v5, :cond_2

    invoke-direct {p0, v2, p2, p3}, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->computeDependents(Lorg/eclipse/jdt/core/IJavaProject;Ljava/util/HashSet;Ljava/util/HashSet;)V

    goto :goto_2

    :cond_2
    aget-object v5, v3, v4

    invoke-interface {v5}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->isArchive()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private computeProjectsAndJars(Lorg/eclipse/jdt/core/IType;)[Lorg/eclipse/core/runtime/IPath;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getPackageFragment()Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->isArchive()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModel()Lorg/eclipse/jdt/internal/core/JavaModel;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaModel;->getJavaProjects()[Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v4

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move p1, v3

    :goto_0
    array-length v6, v4

    if-lt p1, v6, :cond_0

    goto :goto_4

    :cond_0
    aget-object v6, v4, p1

    check-cast v6, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v6, v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getClasspathEntryFor(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/JavaProject;->getAllPackageFragmentRoots()[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v7

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move v8, v3

    :goto_1
    array-length v9, v7

    if-lt v8, v9, :cond_1

    invoke-direct {p0, v6, v0, v5}, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->computeDependents(Lorg/eclipse/jdt/core/IJavaProject;Ljava/util/HashSet;Ljava/util/HashSet;)V

    goto :goto_2

    :cond_1
    aget-object v9, v7, v8

    invoke-interface {v9}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->getKind()I

    move-result v10

    if-ne v10, v2, :cond_2

    invoke-interface {v9}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/IJavaProject;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaProject;->getAllPackageFragmentRoots()[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v1

    :goto_3
    array-length v4, v1

    if-lt v3, v4, :cond_5

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->computeDependents(Lorg/eclipse/jdt/core/IJavaProject;Ljava/util/HashSet;Ljava/util/HashSet;)V

    :goto_4
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p1

    new-array p1, p1, [Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p1

    :cond_5
    aget-object v4, v1, v3

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->getKind()I

    move-result v5

    if-ne v5, v2, :cond_6

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    invoke-interface {v4}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method private enclosesType(Lorg/eclipse/jdt/core/IType;Z)Z
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->subTypes:Ljava/util/HashSet;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->isBinary()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getPrimaryElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IType;

    :goto_0
    if-eq v0, p1, :cond_4

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->subTypes:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->hierarchy:Lorg/eclipse/jdt/core/ITypeHierarchy;

    invoke-interface {v0, p1}, Lorg/eclipse/jdt/core/ITypeHierarchy;->contains(Lorg/eclipse/jdt/core/IType;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->isBinary()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getPrimaryElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IType;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->hierarchy:Lorg/eclipse/jdt/core/ITypeHierarchy;

    invoke-interface {v2, v0}, Lorg/eclipse/jdt/core/ITypeHierarchy;->contains(Lorg/eclipse/jdt/core/IType;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x0

    if-eqz p2, :cond_7

    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getTypes()[Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    move v2, v0

    :goto_1
    array-length v3, p1

    if-lt v2, v3, :cond_5

    goto :goto_2

    :cond_5
    aget-object v3, p1, v2

    invoke-direct {p0, v3, p2}, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->enclosesType(Lorg/eclipse/jdt/core/IType;Z)Z

    move-result v3
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_6

    return v1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    :cond_7
    :goto_2
    return v0
.end method


# virtual methods
.method public add(Lorg/eclipse/core/resources/IResource;)V
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->elementCount:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->elements:[Lorg/eclipse/core/resources/IResource;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [Lorg/eclipse/core/resources/IResource;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->elements:[Lorg/eclipse/core/resources/IResource;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->elements:[Lorg/eclipse/core/resources/IResource;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->elementCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->elementCount:I

    aput-object p1, v0, v1

    return-void
.end method

.method public encloses(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->encloses(Ljava/lang/String;Lorg/eclipse/core/runtime/IProgressMonitor;)Z

    move-result p1

    return p1
.end method

.method public encloses(Ljava/lang/String;Lorg/eclipse/core/runtime/IProgressMonitor;)Z
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->hierarchy:Lorg/eclipse/jdt/core/ITypeHierarchy;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->focusPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 4
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->needsRefresh:Z

    if-eqz v0, :cond_1

    .line 5
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->initialize(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v1

    :cond_1
    return v2

    .line 6
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->needsRefresh:Z

    if-eqz v0, :cond_3

    .line 7
    :try_start_1
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->refresh(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    return v1

    .line 8
    :cond_3
    :goto_1
    const-string p2, "|"

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_4

    .line 9
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->resourcePaths:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    move p2, v1

    .line 10
    :goto_2
    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->elementCount:I

    if-lt p2, v0, :cond_5

    return v1

    .line 11
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->elements:[Lorg/eclipse/core/resources/IResource;

    aget-object v0, v0, p2

    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_2
.end method

.method public encloses(Lorg/eclipse/jdt/core/IJavaElement;)Z
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->encloses(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/core/runtime/IProgressMonitor;)Z

    move-result p1

    return p1
.end method

.method public encloses(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/core/runtime/IProgressMonitor;)Z
    .locals 4

    .line 13
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->hierarchy:Lorg/eclipse/jdt/core/ITypeHierarchy;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 14
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->includeFocusType:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->focusType:Lorg/eclipse/jdt/core/IType;

    const/4 v3, 0x7

    invoke-interface {p1, v3}, Lorg/eclipse/jdt/core/IJavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 15
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->needsRefresh:Z

    if-eqz v0, :cond_1

    .line 16
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->initialize(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v1

    :cond_1
    return v2

    .line 17
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->needsRefresh:Z

    if-eqz v0, :cond_3

    .line 18
    :try_start_1
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->refresh(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    return v1

    .line 19
    :cond_3
    :goto_1
    instance-of p2, p1, Lorg/eclipse/jdt/core/IType;

    if-eqz p2, :cond_4

    .line 20
    check-cast p1, Lorg/eclipse/jdt/core/IType;

    goto :goto_2

    .line 21
    :cond_4
    instance-of p2, p1, Lorg/eclipse/jdt/core/IMember;

    if-eqz p2, :cond_5

    .line 22
    check-cast p1, Lorg/eclipse/jdt/core/IMember;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->getDeclaringType()Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_a

    .line 23
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->focusType:Lorg/eclipse/jdt/core/IType;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 24
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->includeFocusType:Z

    return p1

    .line 25
    :cond_6
    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->allowMemberAndEnclosingTypes:Z

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->enclosesType(Lorg/eclipse/jdt/core/IType;Z)Z

    move-result p2

    if-eqz p2, :cond_7

    return v2

    .line 26
    :cond_7
    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->allowMemberAndEnclosingTypes:Z

    if-eqz p2, :cond_a

    .line 27
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->getDeclaringType()Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    :goto_3
    if-nez p1, :cond_8

    goto :goto_4

    .line 28
    :cond_8
    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->enclosesType(Lorg/eclipse/jdt/core/IType;Z)Z

    move-result p2

    if-eqz p2, :cond_9

    return v2

    .line 29
    :cond_9
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->getDeclaringType()Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    goto :goto_3

    :cond_a
    :goto_4
    return v1
.end method

.method public enclosesFineGrained(Lorg/eclipse/jdt/core/IJavaElement;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->subTypes:Ljava/util/HashSet;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->allowMemberAndEnclosingTypes:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->encloses(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/core/runtime/IProgressMonitor;)Z

    move-result p1

    return p1
.end method

.method public enclosingProjectsAndJars()[Lorg/eclipse/core/runtime/IPath;
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->needsRefresh:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->refresh(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/eclipse/core/runtime/IPath;

    return-object v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->enclosingProjectsAndJars:[Lorg/eclipse/core/runtime/IPath;

    return-object v0
.end method

.method public initialize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->initialize(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public initialize(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->resourcePaths:Ljava/util/HashSet;

    const/4 v0, 0x5

    .line 3
    new-array v0, v0, [Lorg/eclipse/core/resources/IResource;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->elements:[Lorg/eclipse/core/resources/IResource;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->elementCount:I

    .line 5
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->needsRefresh:Z

    .line 6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->hierarchy:Lorg/eclipse/jdt/core/ITypeHierarchy;

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->javaProject:Lorg/eclipse/jdt/core/IJavaProject;

    if-eqz v0, :cond_0

    .line 8
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->focusType:Lorg/eclipse/jdt/core/IType;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->owner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    invoke-interface {v1, v0, v2, p1}, Lorg/eclipse/jdt/core/IType;->newTypeHierarchy(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ITypeHierarchy;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->hierarchy:Lorg/eclipse/jdt/core/ITypeHierarchy;

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->focusType:Lorg/eclipse/jdt/core/IType;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->owner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    invoke-interface {v0, v1, p1}, Lorg/eclipse/jdt/core/IType;->newTypeHierarchy(Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ITypeHierarchy;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->hierarchy:Lorg/eclipse/jdt/core/ITypeHierarchy;

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {v0, p1}, Lorg/eclipse/jdt/core/ITypeHierarchy;->refresh(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    .line 11
    :goto_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->buildResourceVector()V

    return-void
.end method

.method public processDelta(Lorg/eclipse/jdt/core/IJavaElementDelta;I)V
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->needsRefresh:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->hierarchy:Lorg/eclipse/jdt/core/ITypeHierarchy;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    check-cast v0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->isAffected(Lorg/eclipse/jdt/core/IJavaElementDelta;I)Z

    move-result p1

    :goto_0
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->needsRefresh:Z

    return-void
.end method

.method public refresh()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->refresh(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public refresh(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->hierarchy:Lorg/eclipse/jdt/core/ITypeHierarchy;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->initialize(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HierarchyScope on "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->focusType:Lorg/eclipse/jdt/core/IType;

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringWithAncestors()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
