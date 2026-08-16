.class public Lorg/eclipse/jdt/internal/core/search/matching/IndexBasedJavaSearchEnvironment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;
.implements Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;


# instance fields
.field private mapPathsToRoots:Lorg/eclipse/jdt/internal/core/nd/util/PathMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/util/PathMap<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private roots:[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

.field private sourceEntryPosition:I

.field private unindexedEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;",
            ">;"
        }
    .end annotation
.end field

.field private workingCopies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/core/ICompilationUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;[Lorg/eclipse/jdt/core/ICompilationUnit;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/core/IJavaProject;",
            ">;[",
            "Lorg/eclipse/jdt/core/ICompilationUnit;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/util/PathMap;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/nd/util/PathMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/IndexBasedJavaSearchEnvironment;->mapPathsToRoots:Lorg/eclipse/jdt/internal/core/nd/util/PathMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/IndexBasedJavaSearchEnvironment;->unindexedEntries:Ljava/util/List;

    invoke-static {p2}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->getWorkingCopyMap([Lorg/eclipse/jdt/core/ICompilationUnit;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/IndexBasedJavaSearchEnvironment;->workingCopies:Ljava/util/Map;

    const/4 p2, 0x0

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    new-array p1, p2, [Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/IndexBasedJavaSearchEnvironment;->roots:[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    goto :goto_2

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/IJavaProject;

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaProject;->getAllPackageFragmentRoots()[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v2

    array-length v3, v2

    move v4, p2

    :goto_1
    if-lt v4, v3, :cond_1

    goto :goto_0

    :cond_1
    aget-object v5, v2, v4

    invoke-interface {v5}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v6

    invoke-interface {v5}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->isArchive()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v6, v0}, Lorg/eclipse/jdt/internal/core/JavaModel;->getTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->getKind()I

    move-result v7

    if-ne v7, v0, :cond_2

    move-object v7, v5

    check-cast v7, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    new-instance v8, Lorg/eclipse/jdt/internal/core/search/matching/ClasspathSourceDirectory;

    check-cast v6, Lorg/eclipse/core/resources/IContainer;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->fullExclusionPatternChars()[[C

    move-result-object v9

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->fullInclusionPatternChars()[[C

    move-result-object v7

    invoke-direct {v8, v6, v9, v7}, Lorg/eclipse/jdt/internal/core/search/matching/ClasspathSourceDirectory;-><init>(Lorg/eclipse/core/resources/IContainer;[[C[[C)V

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/search/matching/IndexBasedJavaSearchEnvironment;->unindexedEntries:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    new-array p1, p2, [Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/IndexBasedJavaSearchEnvironment;->roots:[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    :goto_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/IndexBasedJavaSearchEnvironment;->roots:[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    array-length p1, p1

    move v1, p2

    :goto_3
    if-lt v1, p1, :cond_5

    const v1, 0x7fffffff

    iput v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/IndexBasedJavaSearchEnvironment;->sourceEntryPosition:I

    :goto_4
    if-lt p2, p1, :cond_3

    goto :goto_5

    :cond_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/IndexBasedJavaSearchEnvironment;->roots:[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    aget-object v1, v1, p2

    :try_start_1
    invoke-interface {v1}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->getKind()I

    move-result v1

    if-ne v1, v0, :cond_4

    iput p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/IndexBasedJavaSearchEnvironment;->sourceEntryPosition:I
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_5
    return-void

    :catch_1
    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/IndexBasedJavaSearchEnvironment;->roots:[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->getLocationForElement(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/IndexBasedJavaSearchEnvironment;->mapPathsToRoots:Lorg/eclipse/jdt/internal/core/nd/util/PathMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/eclipse/jdt/internal/core/nd/util/PathMap;->put(Lorg/eclipse/core/runtime/IPath;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public static create(Ljava/util/List;[Lorg/eclipse/jdt/core/ICompilationUnit;)Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/core/IJavaProject;",
            ">;[",
            "Lorg/eclipse/jdt/core/ICompilationUnit;",
            ")",
            "Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;"
        }
    .end annotation

    invoke-static {}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/eclipse/jdt/internal/core/search/matching/IndexBasedJavaSearchEnvironment;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/IndexBasedJavaSearchEnvironment;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/IndexBasedJavaSearchEnvironment;-><init>(Ljava/util/List;[Lorg/eclipse/jdt/core/ICompilationUnit;)V

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/IJavaProject;

    invoke-direct {v0, v1, p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;-><init>(Lorg/eclipse/jdt/core/IJavaProject;[Lorg/eclipse/jdt/core/ICompilationUnit;)V

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->addProjectClassPath(Lorg/eclipse/jdt/internal/core/JavaProject;)V

    goto :goto_0
.end method

.method private findClassInUnindexedLocations(Ljava/lang/String;[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/search/matching/IndexBasedJavaSearchEnvironment;->unindexedEntries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_2

    if-eqz v5, :cond_1

    return-object v5

    :cond_1
    return-object v4

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    instance-of v11, v12, Lorg/eclipse/jdt/internal/core/search/matching/ClasspathSourceDirectory;

    const/4 v13, 0x0

    const-string v14, ""

    if-eqz v11, :cond_6

    if-nez v7, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    array-length v9, v2

    if-le v7, v9, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    array-length v9, v2

    sub-int/2addr v7, v9

    add-int/lit8 v9, v7, -0x1

    invoke-virtual {v1, v13, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    move-object v10, v1

    goto :goto_1

    :cond_3
    move-object v7, v1

    move-object v10, v7

    move-object v9, v14

    :cond_4
    :goto_1
    iget-object v11, v0, Lorg/eclipse/jdt/internal/core/search/matching/IndexBasedJavaSearchEnvironment;->workingCopies:Ljava/util/Map;

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    if-eqz v11, :cond_5

    new-instance v12, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    invoke-direct {v12, v11, v4}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;-><init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    goto :goto_3

    :cond_5
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v15, 0x0

    move-object v13, v7

    move-object v14, v9

    move-object/from16 v16, v10

    invoke-virtual/range {v12 .. v18}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/function/Predicate;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object v12

    goto :goto_3

    :cond_6
    if-nez v6, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".class"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    array-length v9, v2

    if-le v8, v9, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    array-length v9, v2

    sub-int/2addr v8, v9

    add-int/lit8 v9, v8, -0x6

    add-int/lit8 v8, v8, -0x7

    invoke-virtual {v6, v13, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v19, v8

    move-object v8, v6

    move-object v6, v9

    move-object/from16 v9, v19

    goto :goto_2

    :cond_7
    move-object v8, v6

    move-object v9, v14

    :cond_8
    :goto_2
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v15, 0x0

    move-object v13, v6

    move-object v14, v9

    move-object/from16 v16, v8

    invoke-virtual/range {v12 .. v18}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/function/Predicate;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object v12

    :goto_3
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->ignoreIfBetter()Z

    move-result v11

    if-nez v11, :cond_9

    invoke-virtual {v12, v5}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->isBetter(Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;)Z

    move-result v11

    if-eqz v11, :cond_0

    return-object v12

    :cond_9
    invoke-virtual {v12, v5}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->isBetter(Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object v5, v12

    goto/16 :goto_0
.end method

.method public static isEnabled()Z
    .locals 5

    invoke-static {}, Lorg/eclipse/core/runtime/Platform;->getPreferencesService()Lorg/eclipse/core/runtime/preferences/IPreferencesService;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "org.eclipse.jdt.core"

    const-string v4, "useIndexBasedSearchEnvironment"

    invoke-interface {v0, v3, v4, v1, v2}, Lorg/eclipse/core/runtime/preferences/IPreferencesService;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z[Lorg/eclipse/core/runtime/preferences/IScopeContext;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    return-void
.end method

.method public containsPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/IndexBasedJavaSearchEnvironment;->mapPathsToRoots:Lorg/eclipse/jdt/internal/core/nd/util/PathMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/util/PathMap;->containsPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result p1

    return p1
.end method

.method public findType([C[[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 3

    .line 25
    array-length v0, p2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [[C

    const/4 v1, 0x0

    .line 26
    :goto_0
    array-length v2, p2

    if-lt v1, v2, :cond_0

    .line 27
    array-length p2, p2

    aput-object p1, v0, p2

    .line 28
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/matching/IndexBasedJavaSearchEnvironment;->findType([[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p1

    return-object p1

    .line 29
    :cond_0
    aget-object v2, p2, v1

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public findType([[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 10

    const/16 v0, 0x2f

    .line 1
    invoke-static {p1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-object p1, p1, v2

    invoke-direct {p0, v1, p1}, Lorg/eclipse/jdt/internal/core/search/matching/IndexBasedJavaSearchEnvironment;->findClassInUnindexedLocations(Ljava/lang/String;[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/IndexBasedJavaSearchEnvironment;->sourceEntryPosition:I

    goto :goto_0

    :cond_0
    const v1, 0x7fffffff

    .line 4
    :goto_0
    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/nd/java/JavaNames;->binaryNameToFieldDescriptor([C)[C

    move-result-object v2

    .line 5
    invoke-static {}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->getIndex()Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v4

    const/4 v5, 0x0

    .line 7
    :try_start_0
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/nd/Nd;->acquireReadLock()Lorg/eclipse/jdt/internal/core/nd/IReader;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->findType([C)Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 9
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->getTypes()Ljava/util/List;

    move-result-object v2

    .line 10
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/core/nd/java/NdType;

    .line 11
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getFile()Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;

    move-result-object v6

    .line 12
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v6

    .line 13
    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/search/matching/IndexBasedJavaSearchEnvironment;->mapPathsToRoots:Lorg/eclipse/jdt/internal/core/nd/util/PathMap;

    invoke-virtual {v7, v6}, Lorg/eclipse/jdt/internal/core/nd/util/PathMap;->getMostSpecific(Lorg/eclipse/core/runtime/IPath;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_1

    .line 14
    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/search/matching/IndexBasedJavaSearchEnvironment;->roots:[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v7, v7, v8

    .line 15
    invoke-interface {v7}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->getRawClasspathEntry()Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v7

    check-cast v7, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    .line 16
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getAccessRuleSet()Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    move-result-object v7

    if-nez v7, :cond_3

    move-object v7, v5

    goto :goto_2

    .line 17
    :cond_3
    invoke-virtual {v7, v0}, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->getViolatedRestriction([C)Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    move-result-object v7

    .line 18
    :goto_2
    invoke-static {v3}, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;->create(Lorg/eclipse/jdt/internal/core/nd/java/NdType;)Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;

    move-result-object v3

    .line 19
    new-instance v8, Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".class"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 20
    new-instance v9, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    invoke-direct {v9, v3, v8}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;-><init>(Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;[C)V

    .line 21
    new-instance v3, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    invoke-direct {v3, v9, v7}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;-><init>(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    .line 22
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p0, p1, v1, v3, v7}, Lorg/eclipse/jdt/internal/core/search/matching/IndexBasedJavaSearchEnvironment;->isBetter(Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;ILorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 23
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p1, v3

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v5, v0

    goto :goto_4

    :cond_4
    :goto_3
    if-eqz v4, :cond_8

    .line 24
    :try_start_2
    invoke-interface {v4}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :goto_4
    if-eqz v4, :cond_5

    invoke-interface {v4}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V

    :cond_5
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_5
    if-eqz v5, :cond_7

    if-eq v5, v0, :cond_6

    :try_start_3
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    move-object v0, v5

    :cond_7
    throw v0
    :try_end_3
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_8
    :goto_6
    return-object p1
.end method

.method public isBetter(Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;ILorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;I)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p1}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->isBetter(Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->isBetter(Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;)Z

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_2

    if-ge p4, p2, :cond_2

    goto :goto_0

    :cond_2
    move v0, p3

    :goto_0
    return v0
.end method

.method public isPackage([[C[C)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x2f

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v3

    if-eqz p1, :cond_1

    array-length p1, p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/eclipse/jdt/internal/core/nd/java/JavaNames;->FIELD_DESCRIPTOR_PREFIX:[C

    new-array v4, v1, [C

    aput-char v2, v4, v0

    new-array v5, v1, [C

    aput-char v2, v5, v0

    filled-new-array {p1, v3, v4, p2, v5}, [[C

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->concat([[C)[C

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Lorg/eclipse/jdt/internal/core/nd/java/JavaNames;->FIELD_DESCRIPTOR_PREFIX:[C

    new-array v3, v1, [C

    aput-char v2, v3, v0

    invoke-static {p1, p2, v3}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->concat([C[C[C)[C

    move-result-object p1

    :goto_1
    invoke-static {}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->getIndex()Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;

    move-result-object p2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->acquireReadLock()Lorg/eclipse/jdt/internal/core/nd/IReader;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Lorg/eclipse/jdt/internal/core/search/matching/IndexBasedJavaSearchEnvironment$1;

    invoke-direct {v3, p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/IndexBasedJavaSearchEnvironment$1;-><init>(Lorg/eclipse/jdt/internal/core/search/matching/IndexBasedJavaSearchEnvironment;[C)V

    invoke-virtual {p2, p1, v3}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->visitFieldDescriptorsStartingWith([CLorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$Visitor;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    xor-int/2addr p1, v1

    if-eqz v0, :cond_2

    :try_start_2
    invoke-interface {v0}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_2
    return p1

    :catchall_1
    move-exception p1

    move-object v2, p1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V

    :cond_3
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    if-eqz v2, :cond_5

    if-eq v2, p1, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    move-object p1, v2

    :cond_5
    throw p1
.end method
