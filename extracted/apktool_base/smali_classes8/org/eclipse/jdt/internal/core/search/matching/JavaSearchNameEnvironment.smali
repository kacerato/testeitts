.class public Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;
.implements Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;


# instance fields
.field locationSet:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;",
            ">;"
        }
    .end annotation
.end field

.field moduleLocations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;",
            ">;"
        }
    .end annotation
.end field

.field moduleToClassPathLocations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashSet<",
            "Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;",
            ">;>;"
        }
    .end annotation
.end field

.field modules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/core/IModuleDescription;",
            ">;"
        }
    .end annotation
.end field

.field private modulesComputed:Z

.field workingCopies:Ljava/util/Map;
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
.method public constructor <init>(Lorg/eclipse/jdt/core/IJavaProject;[Lorg/eclipse/jdt/core/ICompilationUnit;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->modulesComputed:Z

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->isComplianceJava9OrHigher(Lorg/eclipse/jdt/core/IJavaProject;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->moduleLocations:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->moduleToClassPathLocations:Ljava/util/Map;

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->modules:Ljava/util/Map;

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->computeClasspathLocations(Lorg/eclipse/jdt/internal/core/JavaProject;)Ljava/util/LinkedHashSet;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->locationSet:Ljava/util/LinkedHashSet;

    invoke-static {p2}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->getWorkingCopyMap([Lorg/eclipse/jdt/core/ICompilationUnit;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->workingCopies:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lorg/eclipse/jdt/internal/compiler/env/IModule;)[C
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->lambda$6(Lorg/eclipse/jdt/internal/compiler/env/IModule;)[C

    move-result-object p0

    return-object p0
.end method

.method private addClassPathToModule(Ljava/lang/String;Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->moduleToClassPathLocations:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->moduleToClassPathLocations:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private addModuleClassPathInfo(Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;Lorg/eclipse/jdt/core/IModuleDescription;)Ljava/lang/String;
    .locals 2

    .line 7
    invoke-static {p2}, Lorg/eclipse/jdt/internal/core/NameLookup;->getModuleDescriptionInfo(Lorg/eclipse/jdt/core/IModuleDescription;)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 8
    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .line 10
    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->setModule(Lorg/eclipse/jdt/internal/compiler/env/IModule;)V

    .line 11
    invoke-direct {p0, v1, p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->addClassPathToModule(Ljava/lang/String;Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private addModuleClassPathInfo(Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;Lorg/eclipse/jdt/core/IModuleDescription;Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getModuleDescription()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    invoke-direct {p0, p3, p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->addModuleClassPathInfo(Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;Lorg/eclipse/jdt/core/IModuleDescription;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->modules:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->moduleLocations:Ljava/util/Map;

    if-eqz p1, :cond_2

    .line 5
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 6
    invoke-direct {p0, p3, p2}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->addModuleClassPathInfo(Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;Lorg/eclipse/jdt/core/IModuleDescription;)Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic b(Lorg/eclipse/jdt/internal/compiler/env/IModule;)Z
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->lambda$5(Lorg/eclipse/jdt/internal/compiler/env/IModule;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;)Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->lambda$4(Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object p0

    return-object p0
.end method

.method private computeClasspathLocations(Lorg/eclipse/jdt/internal/core/JavaProject;)Ljava/util/LinkedHashSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/JavaProject;",
            ")",
            "Ljava/util/LinkedHashSet<",
            "Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getAllPackageFragmentRoots()[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getModuleDescription()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v0
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-object p1, v0

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    array-length v3, v1

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v4

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    return-object v2

    :cond_0
    aget-object v5, v1, v0

    check-cast v5, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    invoke-direct {p0, v4, v5, p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->mapToClassPathLocation(Lorg/eclipse/jdt/internal/core/JavaModelManager;Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;Lorg/eclipse/jdt/core/IModuleDescription;)Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v2, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_1
    return-object v0
.end method

.method private computeModules()V
    .locals 6

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->modulesComputed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->modulesComputed:Z

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;-><init>()V

    :try_start_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getModulePathManager()Lorg/eclipse/jdt/internal/core/ModuleSourcePathManager;

    move-result-object v2

    sget-object v3, Lorg/eclipse/jdt/core/compiler/CharOperation;->ALL_PREFIX:[C

    invoke-virtual {v2, v3, v0, v1}, Lorg/eclipse/jdt/internal/core/ModuleSourcePathManager;->seekModule([CZLorg/eclipse/jdt/internal/core/IJavaElementRequestor;)V

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->getModules()[Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_1

    :cond_0
    aget-object v3, v0, v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->modules:Ljava/util/Map;

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    :goto_1
    return-void
.end method

.method private findClass(Ljava/lang/String;[CLorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v10, p4

    invoke-direct {v0, v10}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->getLocationsFor(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v11

    const/4 v12, 0x0

    move-object v3, v12

    move-object v13, v3

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v13, :cond_1

    return-object v13

    :cond_1
    return-object v12

    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    new-instance v5, Lorg/eclipse/jdt/internal/core/builder/e;

    invoke-direct {v5}, Lorg/eclipse/jdt/internal/core/builder/e;-><init>()V

    move-object/from16 v9, p3

    invoke-virtual {v9, v4, v5}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->matches(Ljava/lang/Object;Ljava/util/function/Predicate;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    instance-of v5, v4, Lorg/eclipse/jdt/internal/core/search/matching/ClasspathSourceDirectory;

    const/4 v6, 0x0

    const-string v7, ""

    if-eqz v5, :cond_7

    if-nez v15, :cond_5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    array-length v5, v2

    if-le v3, v5, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    array-length v5, v2

    sub-int/2addr v3, v5

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v18, v1

    move-object/from16 v17, v15

    move-object v15, v5

    goto :goto_1

    :cond_4
    move-object/from16 v17, v1

    move-object/from16 v18, v17

    move-object v15, v7

    goto :goto_1

    :cond_5
    move-object/from16 v18, v17

    move-object/from16 v17, v15

    move-object v15, v3

    :goto_1
    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->workingCopies:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    if-eqz v3, :cond_6

    new-instance v4, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    invoke-direct {v4, v3, v12}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;-><init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    :goto_2
    move-object v3, v15

    move-object/from16 v15, v17

    move-object/from16 v17, v18

    goto/16 :goto_6

    :cond_6
    const/4 v8, 0x0

    const/16 v19, 0x0

    move-object v3, v4

    move-object/from16 v4, v17

    move-object v5, v15

    move-object/from16 v6, p4

    move-object/from16 v7, v18

    move-object/from16 v9, v19

    invoke-virtual/range {v3 .. v9}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/function/Predicate;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object v4

    goto :goto_2

    :cond_7
    if-nez v14, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".class"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    array-length v5, v2

    if-le v3, v5, :cond_8

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    array-length v5, v2

    sub-int/2addr v3, v5

    add-int/lit8 v5, v3, -0x6

    add-int/lit8 v3, v3, -0x7

    invoke-virtual {v14, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v16, v5

    move-object/from16 v18, v14

    :goto_3
    move-object v14, v3

    goto :goto_4

    :cond_8
    move-object/from16 v16, v14

    move-object/from16 v18, v16

    move-object v14, v7

    goto :goto_4

    :cond_9
    move-object/from16 v18, v16

    move-object/from16 v16, v14

    goto :goto_3

    :goto_4
    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->moduleLocations:Ljava/util/Map;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/eclipse/jdt/internal/core/builder/f;

    invoke-direct {v5, v3}, Lorg/eclipse/jdt/internal/core/builder/f;-><init>(Ljava/util/Map;)V

    move-object v9, v5

    goto :goto_5

    :cond_a
    move-object v9, v12

    :goto_5
    const/4 v8, 0x0

    move-object v3, v4

    move-object/from16 v4, v16

    move-object v5, v14

    move-object/from16 v6, p4

    move-object/from16 v7, v18

    invoke-virtual/range {v3 .. v9}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/function/Predicate;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object v4

    move-object v3, v14

    move-object/from16 v14, v16

    move-object/from16 v16, v18

    :goto_6
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->ignoreIfBetter()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v4, v13}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->isBetter(Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_b
    invoke-virtual {v4, v13}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->isBetter(Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v13, v4

    goto/16 :goto_0
.end method

.method private getLocationsFor(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->moduleToClassPathLocations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedHashSet;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->locationSet:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public static getWorkingCopyMap([Lorg/eclipse/jdt/core/ICompilationUnit;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/eclipse/jdt/core/ICompilationUnit;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/core/ICompilationUnit;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p0

    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    if-eqz p0, :cond_4

    move v3, v0

    :goto_1
    if-lt v3, v1, :cond_1

    goto :goto_4

    :cond_1
    :try_start_0
    aget-object v4, p0, v3

    invoke-interface {v4}, Lorg/eclipse/jdt/core/ICompilationUnit;->getPackageDeclarations()[Lorg/eclipse/jdt/core/IPackageDeclaration;

    move-result-object v5

    array-length v6, v5

    if-lez v6, :cond_2

    aget-object v5, v5, v0

    invoke-interface {v5}, Lorg/eclipse/jdt/core/IPackageDeclaration;->getElementName()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    const-string v5, ""

    :goto_2
    invoke-interface {v4}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/eclipse/jdt/internal/core/util/Util;->getNameWithoutJavaLikeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_3

    goto :goto_3

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x2e

    const/16 v9, 0x2f

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-virtual {v2, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    :cond_4
    :goto_4
    return-object v2
.end method

.method private static isComplianceJava9OrHigher(Lorg/eclipse/jdt/core/IJavaProject;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "org.eclipse.jdt.core.compiler.compliance"

    const/4 v2, 0x1

    invoke-interface {p0, v1, v2}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/32 v5, 0x350000

    cmp-long p0, v3, v5

    if-ltz p0, :cond_1

    return v2

    :cond_1
    return v0
.end method

.method private static synthetic lambda$4(Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;)Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->getModule()Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$5(Lorg/eclipse/jdt/internal/compiler/env/IModule;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->isAutomatic()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$6(Lorg/eclipse/jdt/internal/compiler/env/IModule;)[C
    .locals 0

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object p0

    return-object p0
.end method

.method private mapToClassPathLocation(Lorg/eclipse/jdt/internal/core/JavaModelManager;Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;Lorg/eclipse/jdt/core/IModuleDescription;)Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;
    .locals 6

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    :try_start_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->isArchive()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getRawClasspathEntry()Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/IJavaProject;

    const-string v4, "org.eclipse.jdt.core.compiler.compliance"

    invoke-interface {v3, v4, v2}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    instance-of v5, p2, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;

    if-eqz v5, :cond_0

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getAccessRuleSet()Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    move-result-object v0

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getExternalAnnotationPath(Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/resources/IProject;Z)Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-static {p1, v0, v1, v4}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->forJrtSystem(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getZipFile(Lorg/eclipse/core/runtime/IPath;)Ljava/util/zip/ZipFile;

    move-result-object p1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getAccessRuleSet()Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/IJavaProject;

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getExternalAnnotationPath(Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/resources/IProject;Z)Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->isModular()Z

    move-result v1

    invoke-static {p1, v0, v2, v1, v4}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->forLibrary(Ljava/util/zip/ZipFile;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;ZLjava/lang/String;)Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {v0, v2}, Lorg/eclipse/jdt/internal/core/JavaModel;->getTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getKind()I

    move-result v0

    if-ne v0, v2, :cond_2

    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/ClasspathSourceDirectory;

    check-cast p1, Lorg/eclipse/core/resources/IContainer;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->fullExclusionPatternChars()[[C

    move-result-object v1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->fullInclusionPatternChars()[[C

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lorg/eclipse/jdt/internal/core/search/matching/ClasspathSourceDirectory;-><init>(Lorg/eclipse/core/resources/IContainer;[[C[[C)V

    move-object p1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getRawClasspathEntry()Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    check-cast p1, Lorg/eclipse/core/resources/IContainer;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getAccessRuleSet()Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    move-result-object v1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/IJavaProject;

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getExternalAnnotationPath(Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/resources/IProject;Z)Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->isModular()Z

    move-result v0

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2, v0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->forBinaryFolder(Lorg/eclipse/core/resources/IContainer;ZLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;Z)Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    move-result-object p1
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->isComplianceJava9OrHigher(Lorg/eclipse/jdt/core/IJavaProject;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p2, p3, p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->addModuleClassPathInfo(Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;Lorg/eclipse/jdt/core/IModuleDescription;Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;)V

    :cond_4
    return-object p1
.end method


# virtual methods
.method public addProjectClassPath(Lorg/eclipse/jdt/internal/core/JavaProject;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->computeClasspathLocations(Lorg/eclipse/jdt/internal/core/JavaProject;)Ljava/util/LinkedHashSet;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->locationSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public cleanup()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->locationSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    return-void
.end method

.method public findType([C[[C[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-static {p2, p1, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[C[CC)[C

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([C)V

    .line 2
    invoke-static {p3}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->get([C)Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;

    move-result-object p2

    .line 3
    invoke-static {p3}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->getStringName([C)Ljava/lang/String;

    move-result-object p3

    .line 4
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->findClass(Ljava/lang/String;[CLorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findType([[C[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 2

    if-eqz p1, :cond_0

    .line 5
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-static {p1, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 6
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object p1, p1, v1

    .line 7
    invoke-static {p2}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->get([C)Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;

    move-result-object v1

    .line 8
    invoke-static {p2}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->getStringName([C)Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-direct {p0, v0, p1, v1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->findClass(Ljava/lang/String;[CLorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAllAutomaticModules()[[C
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->moduleLocations:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->moduleLocations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/internal/core/search/matching/a;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/core/search/matching/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/internal/core/search/matching/b;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/core/search/matching/b;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/internal/core/search/matching/c;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/core/search/matching/c;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [[C

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[C

    return-object v0

    :cond_1
    :goto_0
    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    return-object v0
.end method

.method public getModule([C)Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->computeModules()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->modules:Ljava/util/Map;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/IModuleDescription;

    if-eqz p1, :cond_0

    :try_start_0
    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/IModule;
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getModulesDeclaringPackage([[C[C[C)[[C
    .locals 4

    const/16 v0, 0x2f

    invoke-static {p1, p2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[C[CC)[C

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->get([C)Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;

    move-result-object p2

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->Named:Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_4

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->moduleToClassPathLocations:Ljava/util/Map;

    if-eqz p2, :cond_3

    invoke-static {p3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->moduleToClassPathLocations:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    invoke-virtual {v2, p1, p2}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->isPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    filled-new-array {p3}, [[C

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    return-object v1

    :cond_4
    sget-object p3, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->locationSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_7

    sget-object p1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    if-ne p3, p1, :cond_6

    goto :goto_3

    :cond_6
    move-object v1, p3

    :goto_3
    return-object v1

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    new-instance v3, Lorg/eclipse/jdt/internal/core/builder/e;

    invoke-direct {v3}, Lorg/eclipse/jdt/internal/core/builder/e;-><init>()V

    invoke-virtual {p2, v2, v3}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->matches(Ljava/lang/Object;Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, p1, v1}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->isPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, p1, v1}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->getModulesDeclaringPackage(Ljava/lang/String;Ljava/lang/String;)[[C

    move-result-object v2

    if-eqz v2, :cond_5

    array-length v3, v2

    if-nez v3, :cond_8

    goto :goto_2

    :cond_8
    invoke-static {p3, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->arrayConcat([[C[[C)[[C

    move-result-object p3

    goto :goto_2
.end method

.method public hasCompilationUnit([[C[CZ)Z
    .locals 3

    const/16 p3, 0x2f

    invoke-static {p1, p3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->get([C)Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;

    move-result-object p3

    invoke-static {p2}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->getStringName([C)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->Named:Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;

    if-ne p3, v0, :cond_0

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->moduleLocations:Ljava/util/Map;

    if-eqz p3, :cond_2

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    if-eqz p3, :cond_2

    invoke-virtual {p3, p1, p2}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->hasCompilationUnit(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchNameEnvironment;->locationSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    new-instance v2, Lorg/eclipse/jdt/internal/core/builder/e;

    invoke-direct {v2}, Lorg/eclipse/jdt/internal/core/builder/e;-><init>()V

    invoke-virtual {p3, v1, v2}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->matches(Ljava/lang/Object;Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1, p2}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->hasCompilationUnit(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1
.end method
