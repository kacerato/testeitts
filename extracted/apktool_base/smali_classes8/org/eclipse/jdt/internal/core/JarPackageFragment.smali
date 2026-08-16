.class Lorg/eclipse/jdt/internal/core/JarPackageFragment;
.super Lorg/eclipse/jdt/internal/core/PackageFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/PackageFragment;-><init>(Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;[Ljava/lang/String;)V

    return-void
.end method

.method private computeChildren(Ljava/util/ArrayList;)[Lorg/eclipse/jdt/core/IJavaElement;
    .locals 5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/core/JavaElement;->NO_ELEMENTS:[Lorg/eclipse/jdt/internal/core/JavaElement;

    return-object p1

    :cond_0
    new-array v1, v0, [Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "module-info"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v3, Lorg/eclipse/jdt/internal/core/ModularClassFile;

    invoke-direct {v3, p0}, Lorg/eclipse/jdt/internal/core/ModularClassFile;-><init>(Lorg/eclipse/jdt/internal/core/PackageFragment;)V

    aput-object v3, v1, v2

    goto :goto_1

    :cond_2
    new-instance v4, Lorg/eclipse/jdt/internal/core/ClassFile;

    invoke-direct {v4, p0, v3}, Lorg/eclipse/jdt/internal/core/ClassFile;-><init>(Lorg/eclipse/jdt/internal/core/PackageFragment;Ljava/lang/String;)V

    aput-object v4, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private computeNonJavaResources(Ljava/util/ArrayList;)[Ljava/lang/Object;
    .locals 14

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/core/JavaElementInfo;->NO_NON_JAVA_RESOURCES:[Ljava/lang/Object;

    return-object p1

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-lt v5, v0, :cond_4

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lorg/eclipse/core/runtime/IPath;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v10, p1

    check-cast v10, Lorg/eclipse/jdt/internal/core/JarEntryDirectory;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v12, v11, [Lorg/eclipse/jdt/core/IJarEntryResource;

    move p1, v4

    :goto_2
    if-lt p1, v11, :cond_3

    invoke-virtual {v10, v12}, Lorg/eclipse/jdt/internal/core/JarEntryDirectory;->setChildren([Lorg/eclipse/jdt/core/IJarEntryResource;)V

    invoke-interface {v8}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result p1

    if-ne p1, v6, :cond_1

    invoke-virtual {v10, p0}, Lorg/eclipse/jdt/internal/core/JarEntryResource;->setParent(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JarEntryResource;

    invoke-virtual {v0, v10}, Lorg/eclipse/jdt/internal/core/JarEntryResource;->setParent(Ljava/lang/Object;)V

    aput-object v0, v12, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lorg/eclipse/jdt/internal/core/util/Util;->isJavaLikeFileName(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    new-instance v8, Lorg/eclipse/core/runtime/Path;

    invoke-direct {v8, v7}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    array-length v7, v7

    invoke-interface {v8, v7}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_4

    :cond_5
    new-instance v9, Lorg/eclipse/jdt/internal/core/JarEntryFile;

    invoke-interface {v8}, Lorg/eclipse/core/runtime/IPath;->lastSegment()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Lorg/eclipse/jdt/internal/core/JarEntryFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v7}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v8

    if-ne v8, v6, :cond_6

    invoke-virtual {v9, p0}, Lorg/eclipse/jdt/internal/core/JarEntryResource;->setParent(Ljava/lang/Object;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    invoke-interface {v7, v6}, Lorg/eclipse/core/runtime/IPath;->removeLastSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v8

    :goto_3
    move-object v13, v8

    move-object v8, v7

    move-object v7, v13

    invoke-interface {v7}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v9

    if-gtz v9, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    if-nez v9, :cond_9

    new-instance v9, Lorg/eclipse/jdt/internal/core/JarEntryDirectory;

    invoke-interface {v7}, Lorg/eclipse/core/runtime/IPath;->lastSegment()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/eclipse/jdt/internal/core/JarEntryDirectory;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v8

    if-ne v8, v6, :cond_8

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    invoke-interface {v7, v6}, Lorg/eclipse/core/runtime/IPath;->removeLastSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v8

    goto :goto_3

    :cond_9
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public buildStructure(Lorg/eclipse/jdt/internal/core/OpenableElementInfo;Lorg/eclipse/core/runtime/IProgressMonitor;Ljava/util/Map;Lorg/eclipse/core/resources/IResource;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRootInfo;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRootInfo;->rawPackageInfo:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    iget-object p4, p0, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    invoke-virtual {p2, p4}, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->get([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    check-cast p1, Lorg/eclipse/jdt/internal/core/JarPackageFragmentInfo;

    const/4 p4, 0x0

    aget-object p4, p2, p4

    invoke-direct {p0, p4}, Lorg/eclipse/jdt/internal/core/JarPackageFragment;->computeChildren(Ljava/util/ArrayList;)[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p4

    invoke-virtual {p1, p4}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->setChildren([Lorg/eclipse/jdt/core/IJavaElement;)V

    const/4 p4, 0x1

    aget-object p2, p2, p4

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/JarPackageFragment;->computeNonJavaResources(Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->setNonJavaResources([Ljava/lang/Object;)V

    invoke-interface {p3, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p4

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->newNotPresentException()Lorg/eclipse/jdt/core/JavaModelException;

    move-result-object p1

    throw p1
.end method

.method public containsJavaResources()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JarPackageFragmentInfo;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentInfo;->containsJavaResources()Z

    move-result v0

    return v0
.end method

.method public createCompilationUnit(Ljava/lang/String;Ljava/lang/String;ZLorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ICompilationUnit;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance p2, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 p3, 0x3d0

    invoke-direct {p2, p3, p0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw p1
.end method

.method public createElementInfo()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/JarPackageFragmentInfo;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/JarPackageFragmentInfo;-><init>()V

    return-object v0
.end method

.method public getAllClassFiles()[Lorg/eclipse/jdt/core/IClassFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getChildrenOfType(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/eclipse/jdt/core/IClassFile;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v1
.end method

.method public getCompilationUnits()[Lorg/eclipse/jdt/core/ICompilationUnit;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/PackageFragment;->NO_COMPILATION_UNITS:[Lorg/eclipse/jdt/core/ICompilationUnit;

    return-object v0
.end method

.method public getCorrespondingResource()Lorg/eclipse/core/resources/IResource;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNonJavaResources()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragment;->isDefaultPackage()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaElementInfo;->NO_NON_JAVA_RESOURCES:[Ljava/lang/Object;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JarPackageFragment;->storedNonJavaResources()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public internalIsValidPackageName()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public storedNonJavaResources()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JarPackageFragmentInfo;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JarPackageFragmentInfo;->getNonJavaResources()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
