.class Lorg/eclipse/jdt/internal/core/PackageFragmentRootInfo;
.super Lorg/eclipse/jdt/internal/core/OpenableElementInfo;
.source "SourceFile"


# instance fields
.field private ignoreOptionalProblems:Z

.field private initialized:Z

.field protected rootKind:I

.field protected sourceMapper:Lorg/eclipse/jdt/internal/core/SourceMapper;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/PackageFragmentRootInfo;->sourceMapper:Lorg/eclipse/jdt/internal/core/SourceMapper;

    const/4 v1, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/PackageFragmentRootInfo;->rootKind:I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->nonJavaResources:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/PackageFragmentRootInfo;->initialized:Z

    return-void
.end method

.method public static computeFolderNonJavaResources(Lorg/eclipse/jdt/core/IPackageFragmentRoot;Lorg/eclipse/core/resources/IContainer;[[C[[C)[Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const/4 v2, 0x5

    new-array v2, v2, [Lorg/eclipse/core/resources/IResource;

    :try_start_0
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/core/resources/IContainer;->members()[Lorg/eclipse/core/resources/IResource;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    if-lez v4, :cond_8

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/core/resources/IContainer;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v6

    invoke-static {v6}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v6

    const-string v7, "org.eclipse.jdt.core.compiler.source"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    const-string v9, "org.eclipse.jdt.core.compiler.compliance"

    invoke-interface {v6, v9, v8}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v9

    check-cast v9, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/core/JavaProject;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v9

    move v10, v5

    move v11, v10

    :goto_0
    if-lt v10, v4, :cond_0

    goto/16 :goto_3

    :cond_0
    aget-object v12, v3, v10

    invoke-interface {v12}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result v13

    if-eq v13, v8, :cond_2

    const/4 v14, 0x2

    if-eq v13, v14, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v12}, Lorg/eclipse/core/resources/IResource;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v7, v6}, Lorg/eclipse/jdt/internal/core/util/Util;->isValidFolderNameForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-static {v12, v0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/core/resources/IResource;[[C[[C)Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v12}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v13

    invoke-static {v13, v9}, Lorg/eclipse/jdt/internal/core/PackageFragmentRootInfo;->isClasspathEntry(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IClasspathEntry;)Z

    move-result v13

    if-eqz v13, :cond_5

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_2
    invoke-interface {v12}, Lorg/eclipse/core/resources/IResource;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v7, v6}, Lorg/eclipse/jdt/internal/core/util/Util;->isValidCompilationUnitName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v12, v0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/core/resources/IResource;[[C[[C)Z

    move-result v14

    if-nez v14, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v13, v7, v6}, Lorg/eclipse/jdt/internal/core/util/Util;->isValidClassFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v12}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v13

    invoke-static {v13, v9}, Lorg/eclipse/jdt/internal/core/PackageFragmentRootInfo;->isClasspathEntry(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IClasspathEntry;)Z

    move-result v13

    if-eqz v13, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    array-length v13, v2

    if-ne v13, v11, :cond_6

    mul-int/lit8 v13, v11, 0x2

    new-array v13, v13, [Lorg/eclipse/core/resources/IResource;

    invoke-static {v2, v5, v13, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v13

    :cond_6
    add-int/lit8 v13, v11, 0x1

    aput-object v12, v2, v11

    move v11, v13

    :cond_7
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_8
    move v11, v5

    :goto_3
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/core/resources/IContainer;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->isInternalPathForExternalFolder(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-array v0, v11, [Lorg/eclipse/jdt/core/IJarEntryResource;

    :goto_4
    if-lt v5, v11, :cond_9

    return-object v0

    :cond_9
    new-instance v1, Lorg/eclipse/jdt/internal/core/NonJavaResource;

    aget-object v3, v2, v5

    move-object v4, p0

    invoke-direct {v1, p0, v3}, Lorg/eclipse/jdt/internal/core/NonJavaResource;-><init>(Ljava/lang/Object;Lorg/eclipse/core/resources/IResource;)V

    aput-object v1, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_a
    array-length v0, v2

    if-eq v0, v11, :cond_b

    new-array v0, v11, [Lorg/eclipse/core/resources/IResource;

    invoke-static {v2, v5, v0, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    :cond_b
    return-object v2

    :goto_5
    new-instance v1, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {v1, v0}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw v1
.end method

.method private computeNonJavaResources(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;)[Ljava/lang/Object;
    .locals 3

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaElementInfo;->NO_NON_JAVA_RESOURCES:[Ljava/lang/Object;

    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    check-cast p1, Lorg/eclipse/core/resources/IContainer;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->fullInclusionPatternChars()[[C

    move-result-object v1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->fullExclusionPatternChars()[[C

    move-result-object v2

    invoke-static {p2, p1, v1, v2}, Lorg/eclipse/jdt/internal/core/PackageFragmentRootInfo;->computeFolderNonJavaResources(Lorg/eclipse/jdt/core/IPackageFragmentRoot;Lorg/eclipse/core/resources/IContainer;[[C[[C)[Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method

.method private static isClasspathEntry(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IClasspathEntry;)Z
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return v1

    :cond_0
    aget-object v3, p1, v2

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getNonJavaResources(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;)[Ljava/lang/Object;
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->nonJavaResources:[Ljava/lang/Object;

    if-nez p1, :cond_0

    invoke-direct {p0, p2, p3}, Lorg/eclipse/jdt/internal/core/PackageFragmentRootInfo;->computeNonJavaResources(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->nonJavaResources:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getRootKind()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/PackageFragmentRootInfo;->rootKind:I

    return v0
.end method

.method public getSourceMapper()Lorg/eclipse/jdt/internal/core/SourceMapper;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/PackageFragmentRootInfo;->sourceMapper:Lorg/eclipse/jdt/internal/core/SourceMapper;

    return-object v0
.end method

.method public ignoreOptionalProblems(Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/PackageFragmentRootInfo;->initialized:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getRawClasspathEntry()Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->ignoreOptionalProblems()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/PackageFragmentRootInfo;->ignoreOptionalProblems:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/PackageFragmentRootInfo;->initialized:Z

    :cond_0
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/PackageFragmentRootInfo;->ignoreOptionalProblems:Z

    return p1
.end method

.method public setRootKind(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/PackageFragmentRootInfo;->rootKind:I

    return-void
.end method

.method public setSourceMapper(Lorg/eclipse/jdt/internal/core/SourceMapper;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/PackageFragmentRootInfo;->sourceMapper:Lorg/eclipse/jdt/internal/core/SourceMapper;

    return-void
.end method
