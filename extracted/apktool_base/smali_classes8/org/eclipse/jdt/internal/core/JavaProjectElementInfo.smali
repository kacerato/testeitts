.class Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo;
.super Lorg/eclipse/jdt/internal/core/OpenableElementInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo$ProjectCache;
    }
.end annotation


# static fields
.field static final NO_ROOTS:[Lorg/eclipse/jdt/core/IPackageFragmentRoot;


# instance fields
.field mainProjectCache:Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo$ProjectCache;

.field projectCache:Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo$ProjectCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    sput-object v0, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo;->NO_ROOTS:[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->nonJavaResources:[Ljava/lang/Object;

    return-void
.end method

.method public static addSuperPackageNames([Ljava/lang/String;Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;)V
    .locals 3

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p0, v0}, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->getKey([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object p0, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo;->NO_ROOTS:[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    invoke-virtual {p1, v1, p0}, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->put([Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private computeNonJavaResources(Lorg/eclipse/jdt/internal/core/JavaProject;)[Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/core/resources/IProject;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/JavaProject;->getClasspathEntryFor(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v6
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v6, :cond_0

    :try_start_1
    move-object v7, v6

    check-cast v7, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->fullInclusionPatternChars()[[C

    move-result-object v7
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    check-cast v6, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->fullExclusionPatternChars()[[C

    move-result-object v6
    :try_end_2
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_2 .. :try_end_2} :catch_0

    move v8, v5

    goto :goto_1

    :catch_0
    move-object v2, v4

    move-object v6, v2

    move v8, v5

    :goto_0
    move-object v4, v7

    goto :goto_2

    :catch_1
    move-object v2, v4

    move-object v6, v2

    move v8, v5

    goto :goto_2

    :cond_0
    move-object v6, v4

    move-object v7, v6

    const/4 v8, 0x0

    :goto_1
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_3
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_3 .. :try_end_3} :catch_2

    move v9, v5

    goto :goto_3

    :catch_2
    move-object v2, v4

    goto :goto_0

    :catch_3
    move-object v2, v4

    move-object v6, v2

    const/4 v8, 0x0

    :goto_2
    move-object v7, v4

    const/4 v9, 0x0

    move-object v4, v2

    const/4 v2, 0x0

    :goto_3
    const/4 v10, 0x5

    new-array v10, v10, [Lorg/eclipse/core/resources/IResource;

    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/Openable;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v11

    check-cast v11, Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v11}, Lorg/eclipse/core/resources/IContainer;->members()[Lorg/eclipse/core/resources/IResource;

    move-result-object v11

    array-length v12, v11

    if-lez v12, :cond_d

    const-string v13, "org.eclipse.jdt.core.compiler.source"

    invoke-virtual {v1, v13, v5}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    const-string v14, "org.eclipse.jdt.core.compiler.compliance"

    invoke-virtual {v1, v14, v5}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v15, 0x0

    :goto_4
    if-lt v15, v12, :cond_1

    goto/16 :goto_7

    :cond_1
    aget-object v5, v11, v15

    move-object/from16 v16, v11

    invoke-interface {v5}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result v11

    move/from16 v17, v12

    const/4 v12, 0x1

    if-eq v11, v12, :cond_7

    const/4 v12, 0x2

    if-eq v11, v12, :cond_3

    :cond_2
    :goto_5
    move/from16 v18, v9

    goto/16 :goto_6

    :cond_3
    invoke-interface {v5}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v11

    if-eqz v8, :cond_4

    invoke-static {v5, v7, v6}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/core/resources/IResource;[[C[[C)Z

    move-result v12

    if-nez v12, :cond_4

    invoke-interface {v5}, Lorg/eclipse/core/resources/IResource;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v13, v14}, Lorg/eclipse/jdt/internal/core/util/Util;->isValidFolderNameForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    :cond_4
    if-eqz v9, :cond_5

    invoke-interface {v5}, Lorg/eclipse/core/resources/IResource;->getLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v12

    invoke-direct {v0, v11, v12, v1, v4}, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo;->isClasspathEntryOrOutputLocation(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;)Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_5

    :cond_5
    array-length v11, v10

    if-ne v11, v3, :cond_6

    mul-int/lit8 v11, v3, 0x2

    new-array v11, v11, [Lorg/eclipse/core/resources/IResource;

    const/4 v12, 0x0

    invoke-static {v10, v12, v11, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v10, v11

    :cond_6
    add-int/lit8 v11, v3, 0x1

    aput-object v5, v10, v3

    move/from16 v18, v9

    move v3, v11

    goto :goto_6

    :cond_7
    invoke-interface {v5}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v11

    invoke-interface {v5}, Lorg/eclipse/core/resources/IResource;->getName()Ljava/lang/String;

    move-result-object v12

    if-eqz v9, :cond_8

    move/from16 v18, v9

    invoke-interface {v5}, Lorg/eclipse/core/resources/IResource;->getLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v9

    invoke-direct {v0, v11, v9, v1, v4}, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo;->isClasspathEntryOrOutputLocation(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;)Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_6

    :cond_8
    move/from16 v18, v9

    :cond_9
    if-eqz v8, :cond_a

    invoke-static {v12, v13, v14}, Lorg/eclipse/jdt/internal/core/util/Util;->isValidCompilationUnitName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-static {v5, v7, v6}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/core/resources/IResource;[[C[[C)Z

    move-result v9

    if-nez v9, :cond_a

    goto :goto_6

    :cond_a
    if-eqz v2, :cond_b

    invoke-static {v12, v13, v14}, Lorg/eclipse/jdt/internal/core/util/Util;->isValidClassFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    goto :goto_6

    :cond_b
    array-length v9, v10

    if-ne v9, v3, :cond_c

    mul-int/lit8 v9, v3, 0x2

    new-array v9, v9, [Lorg/eclipse/core/resources/IResource;

    const/4 v11, 0x0

    invoke-static {v10, v11, v9, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v10, v9

    :cond_c
    add-int/lit8 v9, v3, 0x1

    aput-object v5, v10, v3

    move v3, v9

    :goto_6
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v11, v16

    move/from16 v12, v17

    move/from16 v9, v18

    const/4 v5, 0x1

    goto/16 :goto_4

    :cond_d
    const/4 v3, 0x0

    :goto_7
    array-length v1, v10

    if-eq v1, v3, :cond_e

    new-array v1, v3, [Lorg/eclipse/core/resources/IResource;

    const/4 v2, 0x0

    invoke-static {v10, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v10, v1

    goto :goto_8

    :catch_4
    sget-object v10, Lorg/eclipse/jdt/internal/core/JavaElementInfo;->NO_NON_JAVA_RESOURCES:[Ljava/lang/Object;

    :cond_e
    :goto_8
    return-object v10
.end method

.method private initializePackageNames(Lorg/eclipse/jdt/core/IPackageFragmentRoot;Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;)V
    .locals 4

    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IOpenable;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->isArchive()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRootInfo;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRootInfo;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/PackageFragmentRootInfo;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRootInfo;-><init>()V

    :goto_0
    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->computeChildren(Lorg/eclipse/jdt/internal/core/OpenableElementInfo;Lorg/eclipse/core/resources/IResource;)Z

    iget-object p1, v0, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->children:[Lorg/eclipse/jdt/core/IJavaElement;

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IParent;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-lt v1, v0, :cond_2

    return-void

    :cond_2
    aget-object v2, p1, v1

    instance-of v3, v2, Lorg/eclipse/jdt/internal/core/PackageFragment;

    if-eqz v3, :cond_3

    check-cast v2, Lorg/eclipse/jdt/internal/core/PackageFragment;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    invoke-virtual {p2, v2}, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;->add([Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_0
    return-void
.end method

.method private isClasspathEntryOrOutputLocation(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;)Z
    .locals 6

    invoke-virtual {p4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    return v0

    :cond_0
    array-length p4, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, p4, :cond_1

    return v1

    :cond_1
    aget-object v3, p3, v2

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Lorg/eclipse/jdt/core/IClasspathEntry;->getOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v0
.end method


# virtual methods
.method public getNonJavaResources(Lorg/eclipse/jdt/internal/core/JavaProject;)[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->nonJavaResources:[Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo;->computeNonJavaResources(Lorg/eclipse/jdt/internal/core/JavaProject;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->nonJavaResources:[Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getProjectCache(Lorg/eclipse/jdt/internal/core/JavaProject;Z)Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo$ProjectCache;
    .locals 9

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo;->mainProjectCache:Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo$ProjectCache;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo;->projectCache:Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo$ProjectCache;

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo$ProjectCache;->allPkgFragmentRootsCache:[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    array-length v3, v2

    move v4, v1

    :goto_1
    if-lt v4, v3, :cond_1

    goto :goto_2

    :cond_1
    aget-object v5, v2, v4

    invoke-interface {v5}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v5

    if-eq v5, p0, :cond_2

    invoke-interface {v5}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-nez v0, :cond_8

    new-instance v2, Ljava/util/HashMap;

    const/4 v0, 0x3

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    :try_start_0
    invoke-virtual {p1, v2, p2}, Lorg/eclipse/jdt/internal/core/JavaProject;->getAllPackageFragmentRoots(Ljava/util/Map;Z)[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    move-object v3, v0

    goto :goto_4

    :catch_0
    new-array v0, v1, [Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    goto :goto_3

    :goto_4
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->deltaState:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    iget-object v4, v0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->roots:Ljava/util/Map;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    array-length v6, v3

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v7

    :goto_5
    if-lt v1, v6, :cond_5

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo$ProjectCache;

    invoke-direct {v0, v3, v2, v5}, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo$ProjectCache;-><init>([Lorg/eclipse/jdt/core/IPackageFragmentRoot;Ljava/util/Map;Ljava/util/Map;)V

    if-eqz p2, :cond_4

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo;->mainProjectCache:Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo$ProjectCache;

    goto :goto_6

    :cond_4
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo;->projectCache:Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo$ProjectCache;

    goto :goto_6

    :cond_5
    aget-object v0, v3, v1

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;

    if-eqz v8, :cond_6

    iget-object v8, v8, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v8, p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_6
    invoke-virtual {v7, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getExistingElement(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    aput-object v0, v3, v1

    new-instance v8, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;

    invoke-direct {v8}, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;-><init>()V

    invoke-direct {p0, v0, v8}, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo;->initializePackageNames(Lorg/eclipse/jdt/core/IPackageFragmentRoot;Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;)V

    invoke-virtual {v5, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_8
    :goto_6
    return-object v0
.end method

.method public newNameLookup(Lorg/eclipse/jdt/internal/core/JavaProject;[Lorg/eclipse/jdt/core/ICompilationUnit;Z)Lorg/eclipse/jdt/internal/core/NameLookup;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo;->getProjectCache(Lorg/eclipse/jdt/internal/core/JavaProject;Z)Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo$ProjectCache;

    move-result-object v5

    iget-object v6, v5, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo$ProjectCache;->allPkgFragmentsCache:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    if-nez v6, :cond_9

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v6

    iget-object v6, v6, Lorg/eclipse/jdt/internal/core/JavaModelManager;->deltaState:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->roots:Ljava/util/Map;

    iget-object v7, v5, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo$ProjectCache;->allPkgFragmentRootsCache:[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    array-length v8, v7

    new-instance v9, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    invoke-direct {v9}, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;-><init>()V

    const/4 v10, 0x0

    :goto_0
    if-lt v10, v8, :cond_0

    iput-object v9, v5, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo$ProjectCache;->allPkgFragmentsCache:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    goto/16 :goto_7

    :cond_0
    aget-object v11, v7, v10

    invoke-interface {v11}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;

    if-nez v12, :cond_1

    move-object v12, v2

    goto :goto_1

    :cond_1
    iget-object v12, v12, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    :goto_1
    invoke-virtual {v12, v2}, Lorg/eclipse/jdt/internal/core/JavaProject;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    iget-object v12, v5, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo$ProjectCache;->pkgFragmentsCaches:Ljava/util/Map;

    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;

    goto :goto_2

    :cond_2
    :try_start_0
    invoke-virtual {v12, v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getProjectCache(Z)Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo$ProjectCache;

    move-result-object v12
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v12, v12, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo$ProjectCache;->pkgFragmentsCaches:Ljava/util/Map;

    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;

    :goto_2
    if-nez v12, :cond_3

    new-instance v12, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;

    invoke-direct {v12}, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;-><init>()V

    invoke-direct {v0, v11, v12}, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo;->initializePackageNames(Lorg/eclipse/jdt/core/IPackageFragmentRoot;Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;)V

    :cond_3
    iget-object v12, v12, Lorg/eclipse/jdt/internal/core/util/HashSetOfArray;->set:[[Ljava/lang/Object;

    array-length v13, v12

    const/4 v14, 0x0

    :goto_3
    if-lt v14, v13, :cond_4

    :catch_0
    const/4 v0, 0x0

    const/16 v16, 0x1

    goto :goto_6

    :cond_4
    aget-object v15, v12, v14

    check-cast v15, [Ljava/lang/String;

    if-nez v15, :cond_5

    const/4 v0, 0x0

    const/16 v16, 0x1

    goto :goto_5

    :cond_5
    invoke-virtual {v9, v15}, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->get([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_6

    sget-object v3, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo;->NO_ROOTS:[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    if-ne v4, v3, :cond_7

    :cond_6
    const/4 v0, 0x0

    const/16 v16, 0x1

    goto :goto_4

    :cond_7
    instance-of v3, v4, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    if-eqz v3, :cond_8

    check-cast v4, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    const/4 v0, 0x0

    aput-object v4, v3, v0

    const/16 v16, 0x1

    aput-object v11, v3, v16

    invoke-virtual {v9, v15, v3}, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->put([Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    const/16 v16, 0x1

    check-cast v4, [Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    array-length v3, v4

    add-int/lit8 v1, v3, 0x1

    new-array v1, v1, [Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    invoke-static {v4, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v11, v1, v3

    invoke-virtual {v9, v15, v1}, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->put([Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :goto_4
    invoke-virtual {v9, v15, v11}, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->put([Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v15, v9}, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo;->addSuperPackageNames([Ljava/lang/String;Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;)V

    :goto_5
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    goto :goto_3

    :goto_6
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    goto/16 :goto_0

    :cond_9
    :goto_7
    new-instance v0, Lorg/eclipse/jdt/internal/core/NameLookup;

    iget-object v3, v5, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo$ProjectCache;->allPkgFragmentRootsCache:[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    iget-object v4, v5, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo$ProjectCache;->allPkgFragmentsCache:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    iget-object v6, v5, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo$ProjectCache;->rootToResolvedEntries:Ljava/util/Map;

    move-object v1, v0

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/NameLookup;-><init>(Lorg/eclipse/jdt/internal/core/JavaProject;[Lorg/eclipse/jdt/core/IPackageFragmentRoot;Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;[Lorg/eclipse/jdt/core/ICompilationUnit;Ljava/util/Map;)V

    return-object v0
.end method

.method public resetCaches()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo;->projectCache:Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo$ProjectCache;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo;->mainProjectCache:Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo$ProjectCache;

    return-void
.end method
