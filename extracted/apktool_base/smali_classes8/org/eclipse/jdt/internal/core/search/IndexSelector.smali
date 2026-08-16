.class public Lorg/eclipse/jdt/internal/core/search/IndexSelector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PROJECT_CAN_NOT_SEE_FOCUS:I = 0x2

.field public static final PROJECT_CAN_SEE_FOCUS:I = 0x0

.field public static final PROJECT_SOURCE_CAN_NOT_SEE_FOCUS:I = 0x1


# instance fields
.field indexLocations:[Lorg/eclipse/jdt/internal/core/index/IndexLocation;

.field pattern:Lorg/eclipse/jdt/core/search/SearchPattern;

.field searchScope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/core/search/SearchPattern;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/IndexSelector;->searchScope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/IndexSelector;->pattern:Lorg/eclipse/jdt/core/search/SearchPattern;

    return-void
.end method

.method private static canSeeFocus(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/core/JavaProject;[[[C)I
    .locals 8

    const/4 v0, 0x2

    if-nez p0, :cond_0

    return v0

    .line 14
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    .line 15
    :cond_1
    instance-of v1, p0, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 16
    invoke-interface {p0}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p0

    .line 17
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getExpandedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p1

    .line 18
    array-length p2, p1

    move v1, v2

    :goto_0
    if-lt v1, p2, :cond_2

    return v0

    .line 19
    :cond_2
    aget-object v4, p1, v1

    .line 20
    invoke-interface {v4}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v5

    if-ne v5, v3, :cond_3

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21
    :cond_4
    check-cast p0, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object p0

    invoke-interface {p0}, Lorg/eclipse/core/resources/IProject;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p0

    .line 22
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getExpandedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v1

    .line 23
    array-length v4, v1

    move v5, v2

    :goto_1
    if-lt v5, v4, :cond_5

    return v0

    .line 24
    :cond_5
    aget-object v6, v1, v5

    .line 25
    invoke-interface {v6}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v7

    if-ne v7, v0, :cond_a

    invoke-interface {v6}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    if-eqz p2, :cond_9

    .line 26
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object p0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getLastBuiltState(Lorg/eclipse/core/resources/IProject;Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/internal/core/builder/State;

    if-eqz p0, :cond_9

    .line 27
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/builder/State;->getReferences()Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    move-result-object p0

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->valueTable:[Ljava/lang/Object;

    .line 28
    array-length p1, p0

    move v4, v2

    :goto_2
    if-lt v4, p1, :cond_6

    return v3

    .line 29
    :cond_6
    aget-object v5, p0, v4

    if-nez v5, :cond_7

    goto :goto_3

    .line 30
    :cond_7
    check-cast v5, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;

    .line 31
    invoke-virtual {v5, p2, v1, v1}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->includes([[[C[[C[[C)Z

    move-result v5
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_8

    return v2

    :cond_8
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    return v2

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    return v0
.end method

.method public static canSeeFocus(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/core/runtime/IPath;)I
    .locals 10

    const/4 v0, 0x2

    .line 1
    :try_start_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModel()Lorg/eclipse/jdt/internal/core/JavaModel;

    move-result-object v1

    .line 2
    invoke-static {p1, v1}, Lorg/eclipse/jdt/internal/core/search/IndexSelector;->getJavaProject(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaModel;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v2

    const/4 v3, 0x0

    .line 3
    invoke-static {p0, v2, v3}, Lorg/eclipse/jdt/internal/core/search/IndexSelector;->getFocusedElementsAndTypes(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;)[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p0

    .line 4
    array-length v4, p0

    if-nez v4, :cond_0

    return v0

    :cond_0
    if-eqz v2, :cond_1

    .line 5
    check-cast v2, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-static {p0, v2, v3}, Lorg/eclipse/jdt/internal/core/search/IndexSelector;->canSeeFocus([Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/core/JavaProject;[[[C)I

    move-result p0

    return p0

    .line 6
    :cond_1
    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaModel;->getJavaProjects()[Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v1

    .line 7
    array-length v2, v1

    const/4 v4, 0x0

    move v6, v0

    move v5, v4

    :goto_0
    if-lt v5, v2, :cond_2

    return v6

    .line 8
    :cond_2
    aget-object v7, v1, v5

    check-cast v7, Lorg/eclipse/jdt/internal/core/JavaProject;

    .line 9
    invoke-virtual {v7, p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getClasspathEntryFor(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 10
    invoke-interface {v8}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    .line 11
    invoke-static {p0, v7, v3}, Lorg/eclipse/jdt/internal/core/search/IndexSelector;->canSeeFocus([Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/core/JavaProject;[[[C)I

    move-result v7
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v7, :cond_3

    return v4

    :cond_3
    if-ne v7, v9, :cond_4

    move v6, v9

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    return v0
.end method

.method private static canSeeFocus([Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/core/JavaProject;[[[C)I
    .locals 6

    .line 12
    array-length v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v0, :cond_0

    return v1

    .line 13
    :cond_0
    aget-object v4, p0, v3

    invoke-static {v4, p1, p2}, Lorg/eclipse/jdt/internal/core/search/IndexSelector;->canSeeFocus(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/core/JavaProject;[[[C)I

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    move v1, v5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static getFocusedElementsAndTypes(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;)[Lorg/eclipse/jdt/core/IJavaElement;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x1

    instance-of v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/eclipse/jdt/core/search/SearchPattern;->focus:Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v3, 0x7

    invoke-interface {v1, v3}, Lorg/eclipse/jdt/core/IJavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/IType;

    check-cast p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->selector:[C

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    iget p0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterCount:I

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Lorg/eclipse/jdt/core/IType;->newSupertypeHierarchy(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ITypeHierarchy;

    move-result-object v4

    invoke-interface {v4, v1}, Lorg/eclipse/jdt/core/ITypeHierarchy;->getAllSupertypes(Lorg/eclipse/jdt/core/IType;)[Lorg/eclipse/jdt/core/IType;

    move-result-object v1

    array-length v4, v1

    new-instance v5, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    add-int/lit8 v6, v4, 0x1

    invoke-direct {v5, v6}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;-><init>(I)V

    if-eqz p1, :cond_0

    invoke-virtual {v5, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->add(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move v6, v2

    :goto_0
    if-lt v6, v4, :cond_3

    iget p0, v5, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->elementSize:I

    new-array p1, p0, [Lorg/eclipse/jdt/core/IJavaElement;

    iget-object v7, v5, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->values:[Ljava/lang/Object;

    array-length p0, v7

    :cond_1
    :goto_1
    add-int/lit8 p0, p0, -0x1

    if-gez p0, :cond_2

    return-object p1

    :cond_2
    aget-object p2, v7, p0

    if-eqz p2, :cond_1

    add-int/lit8 v1, v2, 0x1

    check-cast p2, Lorg/eclipse/jdt/core/IJavaElement;

    aput-object p2, p1, v2

    move v2, v1

    goto :goto_1

    :cond_3
    aget-object p1, v1, v6

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getMethods()[Lorg/eclipse/jdt/core/IMethod;

    move-result-object v7

    array-length v8, v7

    move p1, v2

    :goto_2
    if-lt p1, v8, :cond_4

    goto :goto_4

    :cond_4
    aget-object v9, v7, p1

    invoke-interface {v9}, Lorg/eclipse/jdt/core/IMethod;->getNumberOfParameters()I

    move-result v9

    if-ne p0, v9, :cond_7

    aget-object v9, v7, p1

    invoke-interface {v9}, Lorg/eclipse/jdt/core/IMethod;->getElementName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    aget-object p1, v1, v6

    const/4 v7, 0x3

    invoke-interface {p1, v7}, Lorg/eclipse/jdt/core/IJavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->isArchive()Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_3

    :cond_5
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    :goto_3
    invoke-virtual {v5, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->add(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_6

    aget-object p1, v1, v6

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->add(Ljava/lang/Object;)V

    :cond_6
    :goto_4
    add-int/2addr v6, v0

    goto :goto_0

    :cond_7
    add-int/2addr p1, v0

    goto :goto_2

    :cond_8
    if-nez p1, :cond_9

    new-array p0, v2, [Lorg/eclipse/jdt/core/IJavaElement;

    return-object p0

    :cond_9
    new-array p0, v0, [Lorg/eclipse/jdt/core/IJavaElement;

    aput-object p1, p0, v2

    return-object p0
.end method

.method private static getJavaProject(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaModel;)Lorg/eclipse/jdt/core/IJavaProject;
    .locals 1

    invoke-interface {p0}, Lorg/eclipse/core/runtime/IPath;->lastSegment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-interface {p1, v0}, Lorg/eclipse/jdt/core/IJavaModel;->getJavaProject(Ljava/lang/String;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p0

    invoke-interface {p0}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getQualifiedNames(Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;)[[[C
    .locals 9

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/IndexSelector;->pattern:Lorg/eclipse/jdt/core/search/SearchPattern;

    iget-object v1, v1, Lorg/eclipse/jdt/core/search/SearchPattern;->focus:Lorg/eclipse/jdt/core/IJavaElement;

    :goto_0
    if-eqz v1, :cond_1

    instance-of v2, v1, Lorg/eclipse/jdt/core/ITypeRoot;

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    goto :goto_0

    :cond_1
    :goto_1
    const/16 v2, 0x2e

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    check-cast v1, Lorg/eclipse/jdt/core/ITypeRoot;

    invoke-interface {v1}, Lorg/eclipse/jdt/core/ITypeRoot;->findPrimaryType()Lorg/eclipse/jdt/core/IType;

    move-result-object v1

    if-eqz v1, :cond_2

    add-int/lit8 v6, v0, 0x1

    new-array v6, v6, [[[C

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IType;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v1

    aput-object v1, v6, v5

    move v1, v3

    goto :goto_2

    :cond_2
    move-object v6, v4

    move v1, v5

    :goto_2
    if-nez v6, :cond_3

    new-array v6, v0, [[[C

    :cond_3
    :goto_3
    if-lt v5, v0, :cond_5

    array-length p1, v6

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {v6, v3}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->internQualifiedNames([[[CZ)[[[C

    move-result-object v4

    :goto_4
    return-object v4

    :cond_5
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p1, v5}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/eclipse/jdt/core/IType;

    invoke-interface {v8}, Lorg/eclipse/jdt/core/IType;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    invoke-static {v2, v8}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v8

    aput-object v8, v6, v1

    add-int/lit8 v5, v5, 0x1

    move v1, v7

    goto :goto_3
.end method

.method private initializeIndexLocations()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/search/IndexSelector;->searchScope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    invoke-interface {v1}, Lorg/eclipse/jdt/core/search/IJavaSearchScope;->enclosingProjectsAndJars()[Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getIndexManager()Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    move-result-object v2

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v4, v0, Lorg/eclipse/jdt/internal/core/search/IndexSelector;->pattern:Lorg/eclipse/jdt/core/search/SearchPattern;

    instance-of v5, v4, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->projectOrJarFocus(Lorg/eclipse/jdt/core/search/SearchPattern;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v4

    :goto_0
    const/4 v5, 0x0

    if-nez v4, :cond_4

    move v4, v5

    :goto_1
    array-length v7, v1

    if-lt v4, v7, :cond_2

    :catch_0
    :cond_1
    :goto_2
    const/4 v1, 0x0

    goto/16 :goto_c

    :cond_2
    aget-object v7, v1, v4

    invoke-static {v7, v5}, Lorg/eclipse/jdt/internal/core/JavaModel;->getTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Lorg/eclipse/core/resources/IFolder;

    if-eqz v9, :cond_3

    check-cast v8, Lorg/eclipse/core/resources/IFolder;

    invoke-interface {v8}, Lorg/eclipse/core/resources/IFolder;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v7

    :cond_3
    invoke-virtual {v2, v7}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->computeIndexLocation(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :try_start_0
    array-length v7, v1

    new-array v8, v7, [Lorg/eclipse/jdt/internal/core/JavaProject;

    new-instance v9, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    invoke-direct {v9, v7}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;-><init>(I)V

    new-instance v10, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    invoke-direct {v10, v7}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;-><init>(I)V

    new-instance v11, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    invoke-direct {v11}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;-><init>()V

    iget-object v12, v0, Lorg/eclipse/jdt/internal/core/search/IndexSelector;->pattern:Lorg/eclipse/jdt/core/search/SearchPattern;

    invoke-static {v12, v4, v11}, Lorg/eclipse/jdt/internal/core/search/IndexSelector;->getFocusedElementsAndTypes(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;)[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v12

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v13

    invoke-interface {v13}, Lorg/eclipse/core/resources/IWorkspace;->getDescription()Lorg/eclipse/core/resources/IWorkspaceDescription;

    move-result-object v13

    invoke-interface {v13}, Lorg/eclipse/core/resources/IWorkspaceDescription;->isAutoBuilding()Z

    move-result v13

    if-eqz v13, :cond_5

    instance-of v4, v4, Lorg/eclipse/jdt/core/IJavaProject;

    if-eqz v4, :cond_5

    invoke-direct {v0, v11}, Lorg/eclipse/jdt/internal/core/search/IndexSelector;->getQualifiedNames(Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;)[[[C

    move-result-object v4

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v11

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModel()Lorg/eclipse/jdt/internal/core/JavaModel;

    move-result-object v11

    move v13, v5

    move v14, v13

    :goto_4
    if-lt v13, v7, :cond_10

    move v1, v5

    :goto_5
    const/4 v4, 0x1

    if-ge v1, v14, :cond_a

    iget v7, v10, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->elementSize:I

    if-gtz v7, :cond_6

    goto :goto_7

    :cond_6
    aget-object v7, v8, v1

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/core/JavaProject;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v7

    array-length v12, v7

    :cond_7
    :goto_6
    add-int/lit8 v12, v12, -0x1

    if-gez v12, :cond_8

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_8
    aget-object v13, v7, v12

    invoke-interface {v13}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v15

    if-ne v15, v4, :cond_7

    invoke-interface {v13}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v13

    invoke-virtual {v10, v13}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_7

    invoke-static {v13, v5}, Lorg/eclipse/jdt/internal/core/JavaModel;->getTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object v15

    instance-of v6, v15, Lorg/eclipse/core/resources/IFolder;

    if-eqz v6, :cond_9

    check-cast v15, Lorg/eclipse/core/resources/IFolder;

    invoke-interface {v15}, Lorg/eclipse/core/resources/IFolder;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v13

    :cond_9
    invoke-virtual {v2, v13}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->computeIndexLocation(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    :goto_7
    iget v1, v10, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->elementSize:I

    if-lez v1, :cond_1

    invoke-interface {v11}, Lorg/eclipse/jdt/core/IJavaModel;->getJavaProjects()[Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v1

    array-length v6, v1

    move v7, v5

    :goto_8
    if-ge v7, v6, :cond_1

    iget v8, v10, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->elementSize:I

    if-gtz v8, :cond_b

    goto/16 :goto_2

    :cond_b
    aget-object v8, v1, v7

    check-cast v8, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v9, v8}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->includes(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/core/JavaProject;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v8

    array-length v11, v8

    :cond_c
    :goto_9
    add-int/lit8 v11, v11, -0x1

    if-gez v11, :cond_d

    goto :goto_a

    :cond_d
    aget-object v12, v8, v11

    invoke-interface {v12}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v13

    if-ne v13, v4, :cond_c

    invoke-interface {v12}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v12

    invoke-virtual {v10, v12}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_c

    invoke-static {v12, v5}, Lorg/eclipse/jdt/internal/core/JavaModel;->getTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object v13

    instance-of v14, v13, Lorg/eclipse/core/resources/IFolder;

    if-eqz v14, :cond_e

    check-cast v13, Lorg/eclipse/core/resources/IFolder;

    invoke-interface {v13}, Lorg/eclipse/core/resources/IFolder;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v12

    :cond_e
    invoke-virtual {v2, v12}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->computeIndexLocation(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_f
    :goto_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_10
    aget-object v6, v1, v13

    invoke-static {v6, v11}, Lorg/eclipse/jdt/internal/core/search/IndexSelector;->getJavaProject(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaModel;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v15

    check-cast v15, Lorg/eclipse/jdt/internal/core/JavaProject;

    if-eqz v15, :cond_12

    invoke-virtual {v9, v15}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->add(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v12, v15, v4}, Lorg/eclipse/jdt/internal/core/search/IndexSelector;->canSeeFocus([Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/core/JavaProject;[[[C)I

    move-result v5

    if-nez v5, :cond_11

    invoke-virtual {v2, v6}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->computeIndexLocation(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_11
    const/4 v6, 0x2

    if-eq v5, v6, :cond_13

    add-int/lit8 v5, v14, 0x1

    aput-object v15, v8, v14

    move v14, v5

    goto :goto_b

    :cond_12
    invoke-virtual {v10, v6}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->add(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_13
    :goto_b
    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x0

    goto/16 :goto_4

    :goto_c
    invoke-virtual {v3, v1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    new-array v1, v1, [Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {v3, v1}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/search/IndexSelector;->indexLocations:[Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    return-void
.end method


# virtual methods
.method public getIndexLocations()[Lorg/eclipse/jdt/internal/core/index/IndexLocation;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/IndexSelector;->indexLocations:[Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/IndexSelector;->initializeIndexLocations()V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/IndexSelector;->indexLocations:[Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    return-object v0
.end method
