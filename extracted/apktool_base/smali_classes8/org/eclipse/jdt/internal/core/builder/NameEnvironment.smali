.class public Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;
.implements Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;


# static fields
.field private static synthetic $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$env$IModuleAwareNameEnvironment$LookupStrategy:[I


# instance fields
.field additionalUnits:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

.field binaryLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

.field private compilationGroup:Lorg/eclipse/jdt/internal/core/CompilationGroup;

.field initialTypeNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

.field isIncrementalBuild:Z

.field modulePathEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;",
            ">;"
        }
    .end annotation
.end field

.field moduleUpdater:Lorg/eclipse/jdt/internal/core/ModuleUpdater;

.field notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

.field sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;


# direct methods
.method public static synthetic $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$env$IModuleAwareNameEnvironment$LookupStrategy()[I
    .locals 3

    sget-object v0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->$SWITCH_TABLE$org$eclipse$jdt$internal$compiler$env$IModuleAwareNameEnvironment$LookupStrategy:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->values()[Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->Any:Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->AnyNamed:Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->Named:Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->Unnamed:Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    sput-object v0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->$SWITCH_TABLE$org$eclipse$jdt$internal$compiler$env$IModuleAwareNameEnvironment$LookupStrategy:[I

    return-object v0
.end method

.method public constructor <init>(Lorg/eclipse/core/resources/IWorkspaceRoot;Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;Lorg/eclipse/jdt/internal/core/CompilationGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p5, p0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->compilationGroup:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    const/4 p5, 0x0

    .line 3
    iput-boolean p5, p0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->isIncrementalBuild:Z

    .line 4
    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->computeClasspathLocations(Lorg/eclipse/core/resources/IWorkspaceRoot;Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;)V

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1, p1}, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->setNames([Ljava/lang/String;[Lorg/eclipse/jdt/internal/core/builder/SourceFile;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/internal/core/CompilationGroup;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->isIncrementalBuild:Z

    .line 9
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->compilationGroup:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    const/4 p2, 0x0

    .line 10
    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/resources/IProject;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-direct {p0, v1, p1, p2}, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->computeClasspathLocations(Lorg/eclipse/core/resources/IWorkspaceRoot;Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 11
    :catch_0
    new-array p1, v0, [Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    .line 12
    new-array p1, v0, [Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->binaryLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    .line 13
    :goto_0
    invoke-virtual {p0, p2, p2}, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->setNames([Ljava/lang/String;[Lorg/eclipse/jdt/internal/core/builder/SourceFile;)V

    return-void
.end method

.method public static synthetic a(Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;)Z
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->lambda$8(Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;)[C
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->lambda$9(Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;)[C

    move-result-object p0

    return-object p0
.end method

.method private computeClasspathLocations(Lorg/eclipse/core/resources/IWorkspaceRoot;Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;)V
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/core/JavaProject;->getCycleMarker()Lorg/eclipse/core/resources/IMarker;

    move-result-object v0

    const/4 v13, 0x1

    if-eqz v0, :cond_1

    const-string v1, "org.eclipse.jdt.core.circularClasspath"

    invoke-virtual {v10, v1, v13}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    move v1, v13

    :goto_0
    const-string v2, "severity"

    invoke-interface {v0, v2, v1}, Lorg/eclipse/core/resources/IMarker;->getAttribute(Ljava/lang/String;I)I

    move-result v3

    if-eq v1, v3, :cond_1

    invoke-interface {v0, v2, v1}, Lorg/eclipse/core/resources/IMarker;->setAttribute(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, v8, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->compilationGroup:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    sget-object v1, Lorg/eclipse/jdt/internal/core/CompilationGroup;->MAIN:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    if-ne v0, v1, :cond_2

    move v0, v13

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v10, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getExpandedClasspath(Z)[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v15

    new-instance v7, Ljava/util/ArrayList;

    array-length v0, v15

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Ljava/util/ArrayList;

    array-length v0, v15

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Ljava/util/ArrayList;

    array-length v0, v15

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-string v0, "org.eclipse.jdt.core.compiler.compliance"

    invoke-virtual {v10, v0, v13}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x350000

    cmp-long v0, v0, v2

    const/16 v16, 0x0

    if-ltz v0, :cond_4

    new-instance v0, Ljava/util/LinkedHashMap;

    array-length v1, v15

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    new-instance v1, Lorg/eclipse/jdt/internal/core/ModuleUpdater;

    invoke-direct {v1, v10}, Lorg/eclipse/jdt/internal/core/ModuleUpdater;-><init>(Lorg/eclipse/jdt/internal/core/JavaProject;)V

    iput-object v1, v8, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->moduleUpdater:Lorg/eclipse/jdt/internal/core/ModuleUpdater;

    iget-object v2, v8, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->compilationGroup:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    sget-object v3, Lorg/eclipse/jdt/internal/core/CompilationGroup;->TEST:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    if-ne v2, v3, :cond_3

    invoke-virtual {v1, v10, v15}, Lorg/eclipse/jdt/internal/core/ModuleUpdater;->addReadUnnamedForNonEmptyClasspath(Lorg/eclipse/jdt/internal/core/JavaProject;[Lorg/eclipse/jdt/core/IClasspathEntry;)V

    :cond_3
    move-object v3, v0

    goto :goto_2

    :cond_4
    move-object/from16 v3, v16

    :goto_2
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/core/JavaProject;->getModuleDescription()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v17

    invoke-static {v15, v10}, Lorg/eclipse/jdt/internal/core/builder/ModuleEntryProcessor;->pushPatchToFront([Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/internal/core/JavaProject;)Ljava/lang/String;

    move-result-object v0

    array-length v2, v15

    move-object/from16 v1, v16

    const/4 v14, 0x0

    :goto_3
    if-lt v14, v2, :cond_10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    iput-object v1, v8, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, v8, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    if-eqz v3, :cond_6

    if-eqz v17, :cond_6

    :try_start_0
    check-cast v17, Lorg/eclipse/jdt/internal/core/AbstractModule;

    invoke-interface/range {v17 .. v17}, Lorg/eclipse/jdt/internal/core/AbstractModule;->getElementInfo()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/env/IModule;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v8, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    goto :goto_4

    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/2addr v4, v9

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    :goto_4
    new-instance v4, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v5

    invoke-direct {v4, v5, v1, v2}, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;-><init>(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/compiler/env/IModule;[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;)V

    invoke-interface/range {v17 .. v17}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface/range {v17 .. v17}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    iget-object v1, v8, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_5
    if-lt v2, v1, :cond_7

    goto :goto_9

    :cond_7
    iget-object v4, v8, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    aget-object v4, v4, v2

    iget-object v5, v4, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->binaryFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v5}, Lorg/eclipse/core/resources/IContainer;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v5

    const/4 v7, 0x0

    :goto_6
    if-lt v7, v2, :cond_a

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v8, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    array-length v9, v7

    const/4 v7, 0x0

    :goto_7
    if-lt v7, v9, :cond_8

    iput-boolean v13, v4, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->hasIndependentOutputFolder:Z

    goto :goto_8

    :cond_8
    iget-object v10, v8, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    aget-object v10, v10, v7

    iget-object v10, v10, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->sourceFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v10}, Lorg/eclipse/core/resources/IContainer;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    goto :goto_8

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_a
    iget-object v9, v8, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    aget-object v9, v9, v7

    iget-object v9, v9, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->binaryFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v9}, Lorg/eclipse/core/resources/IContainer;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v5, v8, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    aget-object v5, v5, v7

    iget-boolean v5, v5, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->hasIndependentOutputFolder:Z

    iput-boolean v5, v4, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->hasIndependentOutputFolder:Z

    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_c
    :goto_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    new-array v1, v1, [Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    iput-object v1, v8, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->binaryLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_a
    if-lt v2, v1, :cond_f

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v14, 0x0

    :goto_b
    if-lt v14, v5, :cond_e

    if-eqz v3, :cond_d

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iput-object v3, v8, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->modulePathEntries:Ljava/util/Map;

    :cond_d
    return-void

    :cond_e
    iget-object v0, v8, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->binaryLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    aput-object v2, v0, v4

    add-int/lit8 v14, v14, 0x1

    move v4, v1

    goto :goto_b

    :cond_f
    iget-object v5, v8, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->binaryLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    aput-object v9, v5, v4

    add-int/lit8 v2, v2, 0x1

    move v4, v7

    goto :goto_a

    :cond_10
    if-ne v14, v13, :cond_11

    if-eqz v0, :cond_11

    move-object/from16 v0, v16

    :cond_11
    aget-object v18, v15, v14

    move-object/from16 v12, v18

    check-cast v12, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    move/from16 v18, v2

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    move-object/from16 v20, v15

    invoke-static {v2, v13}, Lorg/eclipse/jdt/internal/core/JavaModel;->getTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object v15

    move/from16 v21, v14

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/core/JavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v14

    invoke-static {v12, v14, v13}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getExternalAnnotationPath(Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/resources/IProject;Z)Lorg/eclipse/core/runtime/IPath;

    move-result-object v14

    if-nez v15, :cond_12

    move-object/from16 v25, v3

    move-object/from16 v26, v5

    move-object v8, v6

    move-object/from16 v27, v7

    move-object v9, v10

    move v15, v13

    const/4 v12, 0x0

    const/16 v31, 0x2

    move-object v10, v4

    goto/16 :goto_26

    :cond_12
    invoke-virtual {v8, v12}, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->isOnModulePath(Lorg/eclipse/jdt/internal/core/ClasspathEntry;)Z

    move-result v13

    move-object/from16 v23, v2

    invoke-static {v12}, Lorg/eclipse/jdt/internal/core/builder/ModuleEntryProcessor;->computeLimitModules(Lorg/eclipse/jdt/internal/core/ClasspathEntry;)Ljava/util/Set;

    move-result-object v2

    if-eqz v0, :cond_13

    if-eqz v2, :cond_13

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_13

    move-object/from16 v24, v4

    move-object/from16 v0, v16

    goto :goto_c

    :cond_13
    move-object/from16 v24, v4

    :goto_c
    iget-object v4, v8, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->moduleUpdater:Lorg/eclipse/jdt/internal/core/ModuleUpdater;

    if-eqz v4, :cond_15

    iget-object v4, v8, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->compilationGroup:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    sget-object v10, Lorg/eclipse/jdt/internal/core/CompilationGroup;->TEST:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    if-eq v4, v10, :cond_14

    invoke-interface {v12}, Lorg/eclipse/jdt/core/IClasspathEntry;->isTest()Z

    move-result v4

    if-nez v4, :cond_15

    :cond_14
    iget-object v4, v8, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->moduleUpdater:Lorg/eclipse/jdt/internal/core/ModuleUpdater;

    invoke-virtual {v4, v12}, Lorg/eclipse/jdt/internal/core/ModuleUpdater;->computeModuleUpdates(Lorg/eclipse/jdt/core/IClasspathEntry;)V

    :cond_15
    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getEntryKind()I

    move-result v4

    const/4 v10, 0x1

    if-eq v4, v10, :cond_30

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eq v4, v11, :cond_1e

    if-eq v4, v10, :cond_16

    :goto_d
    move-object/from16 v9, p2

    move-object/from16 v19, v1

    move-object/from16 v25, v3

    move-object/from16 v26, v5

    move-object v8, v6

    move-object/from16 v27, v7

    move/from16 v31, v11

    move-object/from16 v10, v24

    const/4 v12, 0x0

    const/4 v15, 0x1

    move-object v11, v0

    goto/16 :goto_25

    :cond_16
    instance-of v2, v15, Lorg/eclipse/core/resources/IContainer;

    if-nez v2, :cond_17

    goto :goto_d

    :cond_17
    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    goto :goto_e

    :cond_18
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v4

    const/4 v10, 0x1

    if-ne v4, v10, :cond_19

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/core/JavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v2

    goto :goto_f

    :cond_19
    invoke-interface {v9, v2}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getFolder(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFolder;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/core/resources/IContainer;->exists()Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-direct {v8, v2}, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->createOutputFolder(Lorg/eclipse/core/resources/IContainer;)V

    :cond_1a
    :goto_f
    iget-object v4, v8, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->compilationGroup:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    sget-object v10, Lorg/eclipse/jdt/internal/core/CompilationGroup;->TEST:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    if-ne v4, v10, :cond_1c

    invoke-interface {v12}, Lorg/eclipse/jdt/core/IClasspathEntry;->isTest()Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getAccessRuleSet()Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    move-result-object v4

    const/4 v10, 0x1

    invoke-static {v2, v10, v4, v14, v13}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->forBinaryFolder(Lorg/eclipse/core/resources/IContainer;ZLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;Z)Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_1b

    invoke-static {v2, v1, v3}, Lorg/eclipse/jdt/internal/core/builder/ModuleEntryProcessor;->combinePatchIntoModuleEntry(Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;Lorg/eclipse/jdt/internal/compiler/env/IModule;Ljava/util/Map;)V

    :cond_1b
    iput-object v0, v2, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->patchModuleName:Ljava/lang/String;

    goto :goto_d

    :cond_1c
    check-cast v15, Lorg/eclipse/core/resources/IContainer;

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->fullInclusionPatternChars()[[C

    move-result-object v4

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->fullExclusionPatternChars()[[C

    move-result-object v10

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->ignoreOptionalProblems()Z

    move-result v12

    invoke-static {v15, v2, v4, v10, v12}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->forSourceFolder(Lorg/eclipse/core/resources/IContainer;Lorg/eclipse/core/resources/IContainer;[[C[[CZ)Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    move-result-object v2

    if-eqz v1, :cond_1d

    invoke-static {v2, v1, v3}, Lorg/eclipse/jdt/internal/core/builder/ModuleEntryProcessor;->combinePatchIntoModuleEntry(Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;Lorg/eclipse/jdt/internal/compiler/env/IModule;Ljava/util/Map;)V

    :cond_1d
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, v2, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->patchModuleName:Ljava/lang/String;

    goto/16 :goto_d

    :cond_1e
    instance-of v4, v15, Lorg/eclipse/core/resources/IProject;

    if-nez v4, :cond_1f

    goto/16 :goto_d

    :cond_1f
    move-object v4, v15

    check-cast v4, Lorg/eclipse/core/resources/IProject;

    invoke-static {v4}, Lorg/eclipse/jdt/internal/core/JavaProject;->hasJavaNature(Lorg/eclipse/core/resources/IProject;)Z

    move-result v15

    if-nez v15, :cond_20

    goto/16 :goto_d

    :cond_20
    invoke-static {v4}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v15

    move-object/from16 v19, v15

    check-cast v19, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual/range {v19 .. v19}, Lorg/eclipse/jdt/internal/core/JavaProject;->getRawClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v15

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v26, v1

    array-length v1, v15

    move-object/from16 v27, v5

    const/4 v5, 0x0

    :goto_10
    if-lt v5, v1, :cond_26

    if-eqz v3, :cond_23

    if-eqz v13, :cond_23

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_23

    :try_start_1
    invoke-virtual/range {v19 .. v19}, Lorg/eclipse/jdt/internal/core/JavaProject;->getModuleDescription()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v1

    if-eqz v1, :cond_21

    check-cast v1, Lorg/eclipse/jdt/internal/core/AbstractModule;

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/AbstractModule;->getModuleInfo()Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object v1
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_11

    :catch_1
    :cond_21
    move-object/from16 v1, v16

    :goto_11
    if-nez v1, :cond_22

    invoke-virtual/range {v19 .. v19}, Lorg/eclipse/jdt/internal/core/JavaProject;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v19 .. v19}, Lorg/eclipse/jdt/internal/core/JavaProject;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v5, v4}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->createAutomatic(Ljava/lang/String;ZLjava/util/jar/Manifest;)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object v1

    :cond_22
    new-instance v4, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;

    invoke-virtual/range {v19 .. v19}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v5

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    invoke-interface {v10, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    invoke-direct {v4, v5, v1, v11}, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;-><init>(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/compiler/env/IModule;[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;)V

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v5

    iget-object v11, v8, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->moduleUpdater:Lorg/eclipse/jdt/internal/core/ModuleUpdater;

    invoke-virtual {v11, v5}, Lorg/eclipse/jdt/internal/core/ModuleUpdater;->getUpdates(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;

    move-result-object v11

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_12
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_25

    if-eqz v2, :cond_24

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_13

    :cond_23
    move-object/from16 v9, p2

    move-object v11, v0

    move-object/from16 v25, v3

    move-object v8, v6

    move-object/from16 v10, v24

    move-object/from16 v19, v26

    move-object/from16 v26, v27

    const/4 v12, 0x0

    const/4 v15, 0x1

    const/16 v31, 0x2

    move-object/from16 v27, v7

    goto/16 :goto_25

    :cond_24
    :goto_13
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    move-object/from16 v9, p2

    move-object/from16 v25, v3

    move-object v8, v6

    move-object/from16 v10, v24

    move-object/from16 v26, v27

    const/4 v12, 0x0

    const/4 v15, 0x1

    const/16 v31, 0x2

    move-object/from16 v27, v7

    goto/16 :goto_26

    :cond_25
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    iput-object v2, v12, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->limitModuleNames:Ljava/util/Set;

    iput-object v11, v12, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->updates:Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;

    iput-object v0, v12, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->patchModuleName:Ljava/lang/String;

    goto :goto_12

    :cond_26
    aget-object v28, v15, v5

    move-object/from16 v29, v0

    invoke-interface/range {v28 .. v28}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v0

    move/from16 v30, v1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_28

    iget-object v0, v8, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->compilationGroup:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    sget-object v1, Lorg/eclipse/jdt/internal/core/CompilationGroup;->MAIN:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    if-eq v0, v1, :cond_27

    invoke-interface {v12}, Lorg/eclipse/jdt/core/IClasspathEntry;->isWithoutTestCode()Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_27
    invoke-interface/range {v28 .. v28}, Lorg/eclipse/jdt/core/IClasspathEntry;->isTest()Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_28
    :goto_14
    move-object/from16 v28, v2

    move-object/from16 v32, v7

    const/16 v31, 0x2

    move-object/from16 v2, p3

    goto/16 :goto_19

    :cond_29
    invoke-interface/range {v28 .. v28}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModel;->getTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/eclipse/core/resources/IContainer;

    if-nez v0, :cond_2a

    goto :goto_14

    :cond_2a
    invoke-interface/range {v28 .. v28}, Lorg/eclipse/jdt/core/IClasspathEntry;->getOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-interface/range {v28 .. v28}, Lorg/eclipse/jdt/core/IClasspathEntry;->getOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    :goto_15
    move-object/from16 v28, v2

    goto :goto_16

    :cond_2b
    invoke-virtual/range {v19 .. v19}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    goto :goto_15

    :goto_16
    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v2

    if-ne v2, v1, :cond_2c

    move-object v0, v4

    goto :goto_17

    :cond_2c
    invoke-interface {v9, v0}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getFolder(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFolder;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Lorg/eclipse/core/resources/IContainer;->exists()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getAccessRuleSet()Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    move-result-object v2

    invoke-static {v0, v1, v2, v14, v13}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->forBinaryFolder(Lorg/eclipse/core/resources/IContainer;ZLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;Z)Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p3

    const/16 v31, 0x2

    if-eqz v2, :cond_2e

    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v32, v7

    move-object/from16 v7, v22

    check-cast v7, [Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    if-nez v7, :cond_2d

    new-array v7, v1, [Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    const/4 v1, 0x0

    aput-object v0, v7, v1

    goto :goto_18

    :cond_2d
    array-length v1, v7

    add-int/lit8 v8, v1, 0x1

    new-array v8, v8, [Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    const/4 v9, 0x0

    invoke-static {v7, v9, v8, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v0, v8, v1

    move-object v7, v8

    :goto_18
    invoke-virtual {v2, v4, v7}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    :cond_2e
    move-object/from16 v32, v7

    goto :goto_19

    :cond_2f
    move-object/from16 v2, p3

    move-object/from16 v32, v7

    const/16 v31, 0x2

    :goto_19
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v2, v28

    move-object/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v7, v32

    goto/16 :goto_10

    :cond_30
    move-object/from16 v29, v0

    move-object/from16 v26, v1

    move-object/from16 v28, v2

    move-object/from16 v27, v5

    move-object/from16 v32, v7

    move-object v2, v11

    const/16 v31, 0x2

    instance-of v0, v15, Lorg/eclipse/core/resources/IResource;

    const-string v1, "org.eclipse.jdt.core.compiler.problem.discouragedReference"

    const-string v4, "org.eclipse.jdt.core.compiler.problem.forbiddenReference"

    const-string v5, "ignore"

    if-eqz v0, :cond_38

    move-object v8, v15

    check-cast v8, Lorg/eclipse/core/resources/IResource;

    instance-of v0, v8, Lorg/eclipse/core/resources/IFile;

    if-eqz v0, :cond_32

    move-object/from16 v9, p2

    const/4 v0, 0x1

    invoke-virtual {v9, v4, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-virtual {v9, v1, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    move-object/from16 v0, v16

    goto :goto_1a

    :cond_31
    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getAccessRuleSet()Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    move-result-object v0

    :goto_1a
    move-object v1, v8

    check-cast v1, Lorg/eclipse/core/resources/IFile;

    move-object/from16 v7, v24

    invoke-static {v1, v0, v14, v13, v7}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->forLibrary(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;ZLjava/lang/String;)Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    move-result-object v0

    :goto_1b
    move-object v10, v0

    goto :goto_1d

    :cond_32
    move-object/from16 v9, p2

    move-object/from16 v7, v24

    instance-of v0, v8, Lorg/eclipse/core/resources/IContainer;

    if-eqz v0, :cond_34

    const/4 v0, 0x1

    invoke-virtual {v9, v4, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-virtual {v9, v1, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    move-object/from16 v0, v16

    goto :goto_1c

    :cond_33
    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getAccessRuleSet()Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    move-result-object v0

    :goto_1c
    check-cast v15, Lorg/eclipse/core/resources/IContainer;

    const/4 v1, 0x0

    invoke-static {v15, v1, v0, v14, v13}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->forBinaryFolder(Lorg/eclipse/core/resources/IContainer;ZLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;Z)Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    move-result-object v0

    goto :goto_1b

    :cond_34
    move-object/from16 v10, v16

    :goto_1d
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_35

    move-object/from16 v11, v29

    move-object/from16 v0, p0

    move-object/from16 v19, v26

    move-object v1, v10

    move-object v12, v2

    move-object/from16 v24, v28

    move-object/from16 v2, v23

    move-object/from16 v25, v3

    move v3, v13

    move-object v13, v7

    move-object/from16 v4, v24

    move-object/from16 v26, v27

    move-object v5, v11

    move-object v14, v6

    move-object/from16 v6, v19

    move-object/from16 v27, v32

    move-object/from16 v7, v25

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->collectModuleEntries(Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;Lorg/eclipse/core/runtime/IPath;ZLjava/util/Set;Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/IModule;Ljava/util/Map;)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object v1

    goto :goto_1e

    :cond_35
    move-object v12, v2

    move-object/from16 v25, v3

    move-object v14, v6

    move-object v13, v7

    move-object/from16 v19, v26

    move-object/from16 v26, v27

    move-object/from16 v11, v29

    move-object/from16 v27, v32

    move-object/from16 v1, v19

    :goto_1e
    if-eqz v12, :cond_37

    invoke-interface {v8}, Lorg/eclipse/core/resources/IResource;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v0

    invoke-virtual {v12, v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    if-nez v2, :cond_36

    const/4 v3, 0x1

    new-array v2, v3, [Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    goto :goto_1f

    :cond_36
    const/4 v3, 0x0

    array-length v4, v2

    add-int/lit8 v5, v4, 0x1

    new-array v5, v5, [Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    invoke-static {v2, v3, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v10, v5, v4

    move-object v2, v5

    :goto_1f
    invoke-virtual {v12, v0, v2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_37
    move-object v0, v11

    move-object v10, v13

    move-object v8, v14

    const/4 v12, 0x0

    const/4 v15, 0x1

    goto/16 :goto_26

    :cond_38
    move-object/from16 v9, p2

    move-object/from16 v25, v3

    move-object v8, v6

    move-object/from16 v10, v24

    move-object/from16 v19, v26

    move-object/from16 v26, v27

    move-object/from16 v24, v28

    move-object/from16 v11, v29

    move-object/from16 v27, v32

    instance-of v0, v15, Ljava/io/File;

    if-eqz v0, :cond_3d

    const/4 v15, 0x1

    invoke-virtual {v9, v4, v15}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {v9, v1, v15}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    move-object/from16 v0, v16

    goto :goto_20

    :cond_39
    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getAccessRuleSet()Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    move-result-object v0

    :goto_20
    const-string v1, "org.eclipse.jdt.core.compiler.release"

    const/4 v12, 0x0

    invoke-virtual {v9, v1, v12}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "enabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    move-object v4, v10

    goto :goto_21

    :cond_3a
    move-object/from16 v4, v16

    :goto_21
    invoke-interface/range {v23 .. v23}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isJrt(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface/range {v23 .. v23}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, v14, v4}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->forJrtSystem(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;

    move-result-object v0

    :goto_22
    move-object v1, v0

    goto :goto_23

    :cond_3b
    invoke-interface/range {v23 .. v23}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, v14, v13, v10}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->forLibrary(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;ZLjava/lang/String;)Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    move-result-object v0

    goto :goto_22

    :goto_23
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v25, :cond_3e

    if-nez v24, :cond_3c

    if-eqz v17, :cond_3c

    sget-object v0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->NO_LIMIT_MODULES:Ljava/util/Set;

    move-object v4, v0

    goto :goto_24

    :cond_3c
    move-object/from16 v4, v24

    :goto_24
    move-object/from16 v0, p0

    move-object/from16 v2, v23

    move v3, v13

    move-object v5, v11

    move-object/from16 v6, v19

    move-object/from16 v7, v25

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->collectModuleEntries(Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;Lorg/eclipse/core/runtime/IPath;ZLjava/util/Set;Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/IModule;Ljava/util/Map;)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object v1

    move-object v0, v11

    goto :goto_26

    :cond_3d
    const/4 v12, 0x0

    const/4 v15, 0x1

    :cond_3e
    :goto_25
    move-object v0, v11

    move-object/from16 v1, v19

    :goto_26
    add-int/lit8 v14, v21, 0x1

    move-object/from16 v11, p3

    move-object v6, v8

    move-object v4, v10

    move v13, v15

    move/from16 v2, v18

    move-object/from16 v15, v20

    move-object/from16 v3, v25

    move-object/from16 v5, v26

    move-object/from16 v7, v27

    move-object/from16 v8, p0

    move-object v10, v9

    move-object/from16 v9, p1

    goto/16 :goto_3
.end method

.method private createOutputFolder(Lorg/eclipse/core/resources/IContainer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/eclipse/core/resources/IContainer;->getParent()Lorg/eclipse/core/resources/IContainer;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->createParentFolder(Lorg/eclipse/core/resources/IContainer;)V

    check-cast p1, Lorg/eclipse/core/resources/IFolder;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x401

    invoke-interface {p1, v2, v0, v1}, Lorg/eclipse/core/resources/IFolder;->create(IZLorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method private createParentFolder(Lorg/eclipse/core/resources/IContainer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/eclipse/core/resources/IContainer;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/eclipse/core/resources/IContainer;->getParent()Lorg/eclipse/core/resources/IContainer;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->createParentFolder(Lorg/eclipse/core/resources/IContainer;)V

    check-cast p1, Lorg/eclipse/core/resources/IFolder;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v1, v1, v0}, Lorg/eclipse/core/resources/IFolder;->create(ZZLorg/eclipse/core/runtime/IProgressMonitor;)V

    :cond_0
    return-void
.end method

.method private findClass(Ljava/lang/String;[CLorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v8, p4

    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->checkCancelWithinCompiler()V

    :cond_0
    if-eqz v8, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    iget-object v4, v0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->initialTypeNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    const/4 v9, 0x0

    if-eqz v4, :cond_3

    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->includes(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v2, v0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->isIncrementalBuild:Z

    if-nez v2, :cond_2

    return-object v9

    :cond_2
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;

    new-instance v3, Lorg/eclipse/jdt/internal/core/builder/AbortIncrementalBuildException;

    invoke-direct {v3, v1}, Lorg/eclipse/jdt/internal/core/builder/AbortIncrementalBuildException;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {v2, v1, v3}, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;-><init>(ZLjava/lang/RuntimeException;)V

    throw v2

    :cond_3
    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->additionalUnits:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    iget-object v5, v0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    array-length v5, v5

    if-lez v5, :cond_5

    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/core/builder/SourceFile;

    if-eqz v3, :cond_4

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    invoke-direct {v1, v3, v9}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;-><init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    return-object v1

    :cond_4
    const/16 v3, 0x24

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_5

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->additionalUnits:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v5, v3}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/core/builder/SourceFile;

    if-eqz v3, :cond_5

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    invoke-direct {v1, v3, v9}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;-><init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    return-object v1

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".class"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    array-length v3, v2

    if-ne v1, v3, :cond_6

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    :goto_1
    move-object v11, v1

    goto :goto_2

    :cond_6
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    array-length v3, v2

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x7

    invoke-virtual {v10, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :goto_2
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;->SUFFIX_class:[C

    invoke-static {v2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v12

    if-eqz v8, :cond_9

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->modulePathEntries:Ljava/util/Map;

    if-eqz v1, :cond_9

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;

    instance-of v3, v1, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;

    if-eqz v3, :cond_7

    check-cast v1, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;->getClasspathLocations()[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    move-result-object v1

    :goto_3
    move-object v13, v1

    goto :goto_4

    :cond_7
    instance-of v3, v1, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    if-eqz v3, :cond_8

    check-cast v1, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p2

    move-object v3, v11

    move-object/from16 v4, p4

    move-object v5, v10

    invoke-virtual/range {v1 .. v7}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->findClass([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/function/Predicate;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object v1

    return-object v1

    :cond_8
    return-object v9

    :cond_9
    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->binaryLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    goto :goto_3

    :goto_4
    array-length v14, v13

    move v15, v4

    move-object v7, v9

    :goto_5
    if-lt v15, v14, :cond_a

    return-object v7

    :cond_a
    aget-object v1, v13, v15

    new-instance v2, Lorg/eclipse/jdt/internal/core/builder/e;

    invoke-direct {v2}, Lorg/eclipse/jdt/internal/core/builder/e;-><init>()V

    move-object/from16 v6, p3

    invoke-virtual {v6, v1, v2}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->matches(Ljava/lang/Object;Ljava/util/function/Predicate;)Z

    move-result v2

    if-nez v2, :cond_b

    move-object v9, v7

    goto :goto_7

    :cond_b
    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->modulePathEntries:Ljava/util/Map;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/eclipse/jdt/internal/core/builder/f;

    invoke-direct {v3, v2}, Lorg/eclipse/jdt/internal/core/builder/f;-><init>(Ljava/util/Map;)V

    move-object/from16 v16, v3

    goto :goto_6

    :cond_c
    move-object/from16 v16, v9

    :goto_6
    const/16 v17, 0x0

    move-object v2, v12

    move-object v3, v11

    move-object/from16 v4, p4

    move-object v5, v10

    move/from16 v6, v17

    move-object v9, v7

    move-object/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->findClass([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/function/Predicate;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object v7

    if-eqz v7, :cond_f

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->moduleName()[C

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->modulePathEntries:Ljava/util/Map;

    if-eqz v2, :cond_d

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_7

    :cond_d
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->ignoreIfBetter()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v7, v9}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->isBetter(Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;)Z

    move-result v1

    if-eqz v1, :cond_f

    return-object v7

    :cond_e
    invoke-virtual {v7, v9}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->isBetter(Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_8

    :cond_f
    :goto_7
    move-object v7, v9

    :goto_8
    add-int/lit8 v15, v15, 0x1

    const/4 v9, 0x0

    goto :goto_5
.end method

.method private static synthetic lambda$8(Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;)Z
    .locals 0

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;->isAutomaticModule()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$9(Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;)[C
    .locals 0

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;->getModule()Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object p0

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public applyModuleUpdates(Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->moduleUpdater:Lorg/eclipse/jdt/internal/core/ModuleUpdater;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/ModuleUpdater;->applyModuleUpdates(Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;)V

    :cond_0
    return-void
.end method

.method public cleanup()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->initialTypeNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->additionalUnits:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->binaryLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    array-length v3, v0

    :goto_1
    if-lt v1, v3, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->binaryLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->cleanup()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->cleanup()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public collectModuleEntries(Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;Lorg/eclipse/core/runtime/IPath;ZLjava/util/Set;Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/IModule;Ljava/util/Map;)Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;",
            "Lorg/eclipse/core/runtime/IPath;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/internal/compiler/env/IModule;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;",
            ">;)",
            "Lorg/eclipse/jdt/internal/compiler/env/IModule;"
        }
    .end annotation

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/env/IMultiModuleEntry;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IMultiModuleEntry;

    iput-object p4, p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->limitModuleNames:Ljava/util/Set;

    iput-object p5, p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->patchModuleName:Ljava/lang/String;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;-><init>()V

    invoke-interface {v0, p4}, Lorg/eclipse/jdt/internal/compiler/env/IMultiModuleEntry;->getModuleNames(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 p2, 0x0

    move-object p3, p2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-nez p4, :cond_3

    if-nez p2, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    iput-object v1, p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->updates:Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;

    :cond_2
    if-eqz p5, :cond_7

    invoke-virtual {p5}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/eclipse/jdt/internal/compiler/env/IMultiModuleEntry;->getModule([C)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object p1

    if-eqz p1, :cond_7

    return-object p1

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-interface {p7, p4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->moduleUpdater:Lorg/eclipse/jdt/internal/core/ModuleUpdater;

    invoke-virtual {v3, p4}, Lorg/eclipse/jdt/internal/core/ModuleUpdater;->getUpdates(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;

    move-result-object p4

    if-eqz p4, :cond_0

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;->PACKAGE:Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;

    const/4 v4, 0x0

    invoke-virtual {p4, v3, v4}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;->getList(Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;Z)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    invoke-virtual {v1, v3, v6}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;->getList(Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;Z)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;->MODULE:Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;

    invoke-virtual {p4, v3, v4}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;->getList(Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;Z)Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-virtual {v1, v3, v6}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;->getList(Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;Z)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_5
    if-eqz p3, :cond_7

    new-instance p3, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;

    invoke-direct {p3, p2, p1}, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;-><init>(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;)V

    invoke-interface {p3}, Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;->getModule()Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->moduleUpdater:Lorg/eclipse/jdt/internal/core/ModuleUpdater;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/ModuleUpdater;->getUpdates(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;

    move-result-object v1

    iput-object v1, p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->updates:Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;

    iput-object p4, p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->limitModuleNames:Ljava/util/Set;

    iput-object p5, p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->patchModuleName:Ljava/lang/String;

    if-eqz p4, :cond_6

    sget-object p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;->NO_LIMIT_MODULES:Ljava/util/Set;

    if-eq p4, p1, :cond_6

    invoke-interface {p4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    invoke-interface {p7, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p5, :cond_7

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-object p2

    :cond_7
    return-object p6
.end method

.method public findType([C[[C[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 1

    const/16 v0, 0x2f

    .line 6
    invoke-static {p2, p1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[C[CC)[C

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-static {p3}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->get([C)Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;

    move-result-object v0

    .line 8
    invoke-static {p3}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->getStringName([C)Ljava/lang/String;

    move-result-object p3

    .line 9
    invoke-direct {p0, p2, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->findClass(Ljava/lang/String;[CLorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p1

    return-object p1
.end method

.method public findType([[C[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 2

    if-eqz p1, :cond_0

    const/16 v0, 0x2f

    .line 1
    invoke-static {p1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    .line 2
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object p1, p1, v1

    .line 3
    invoke-static {p2}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->get([C)Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;

    move-result-object v1

    .line 4
    invoke-static {p2}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->getStringName([C)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-direct {p0, v0, p1, v1, p2}, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->findClass(Ljava/lang/String;[CLorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAllAutomaticModules()[[C
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->modulePathEntries:Ljava/util/Map;

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/internal/core/builder/g;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/core/builder/g;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/internal/core/builder/h;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/core/builder/h;-><init>()V

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
.end method

.method public getModule([C)Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->modulePathEntries:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/env/IMultiModuleEntry;

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;->getModule([C)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;->getModule()Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getModulesDeclaringPackage([[C[C[C)[[C
    .locals 7

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-static {p1, p2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[C[CC)[C

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>([C)V

    invoke-static {p3}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->get([C)Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;

    move-result-object p2

    invoke-static {}, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->$SWITCH_TABLE$org$eclipse$jdt$internal$compiler$env$IModuleAwareNameEnvironment$LookupStrategy()[I

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p3, p3, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p3, v1, :cond_6

    const/4 v1, 0x3

    if-eq p3, v1, :cond_0

    const/4 v1, 0x4

    if-eq p3, v1, :cond_0

    goto :goto_3

    :cond_0
    sget-object p1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->binaryLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    array-length v1, p3

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v1, :cond_4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    array-length v6, v5

    :goto_1
    if-lt v3, v6, :cond_2

    sget-object p2, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    if-ne p1, p2, :cond_1

    goto :goto_2

    :cond_1
    move-object v2, p1

    :goto_2
    return-object v2

    :cond_2
    aget-object p3, v5, v3

    new-instance v1, Lorg/eclipse/jdt/internal/core/builder/e;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/core/builder/e;-><init>()V

    invoke-virtual {p2, p3, v1}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->matches(Ljava/lang/Object;Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p3, v0, v2}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->getModulesDeclaringPackage(Ljava/lang/String;Ljava/lang/String;)[[C

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-static {p1, p3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->arrayConcat([[C[[C)[[C

    move-result-object p1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    aget-object v5, p3, v4

    new-instance v6, Lorg/eclipse/jdt/internal/core/builder/e;

    invoke-direct {v6}, Lorg/eclipse/jdt/internal/core/builder/e;-><init>()V

    invoke-virtual {p2, v5, v6}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->matches(Ljava/lang/Object;Ljava/util/function/Predicate;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5, v0, v2}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->getModulesDeclaringPackage(Ljava/lang/String;Ljava/lang/String;)[[C

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-static {p1, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->arrayConcat([[C[[C)[[C

    move-result-object p1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    move-object p1, v2

    :goto_3
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->modulePathEntries:Ljava/util/Map;

    if-eqz p2, :cond_a

    sget-object p2, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    new-instance p3, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->modulePathEntries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {p3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_7
    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_9

    sget-object p1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    if-ne p2, p1, :cond_8

    goto :goto_5

    :cond_8
    move-object v2, p2

    :goto_5
    return-object v2

    :cond_9
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;

    invoke-interface {v1, v0, p1}, Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;->getModulesDeclaringPackage(Ljava/lang/String;Ljava/lang/String;)[[C

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {p2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->arrayConcat([[C[[C)[[C

    move-result-object p2

    goto :goto_4

    :cond_a
    return-object v2
.end method

.method public hasCompilationUnit([[C[CZ)Z
    .locals 7

    const/16 p3, 0x2f

    invoke-static {p1, p3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->get([C)Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;

    move-result-object p3

    invoke-static {p2}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->getStringName([C)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->$SWITCH_TABLE$org$eclipse$jdt$internal$compiler$env$IModuleAwareNameEnvironment$LookupStrategy()[I

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_a

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    const/4 p2, 0x3

    if-eq v0, p2, :cond_1

    const/4 p2, 0x4

    if-ne v0, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected LookupStrategy "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->binaryLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    array-length v3, v0

    move p2, v1

    :goto_1
    const/4 v4, 0x0

    if-lt p2, v3, :cond_4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    array-length v6, v5

    move p2, v1

    :goto_2
    if-lt p2, v6, :cond_2

    return v1

    :cond_2
    aget-object v0, v5, p2

    new-instance v3, Lorg/eclipse/jdt/internal/core/builder/e;

    invoke-direct {v3}, Lorg/eclipse/jdt/internal/core/builder/e;-><init>()V

    invoke-virtual {p3, v0, v3}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->matches(Ljava/lang/Object;Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, p1, v4}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->hasCompilationUnit(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    aget-object v5, v0, p2

    new-instance v6, Lorg/eclipse/jdt/internal/core/builder/e;

    invoke-direct {v6}, Lorg/eclipse/jdt/internal/core/builder/e;-><init>()V

    invoke-virtual {p3, v5, v6}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->matches(Ljava/lang/Object;Ljava/util/function/Predicate;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5, p1, v4}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->hasCompilationUnit(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    return v2

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_6
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->modulePathEntries:Ljava/util/Map;

    if-eqz p3, :cond_9

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_7
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;->hasCompilationUnit(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v2

    :cond_9
    :goto_3
    return v1

    :cond_a
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->modulePathEntries:Ljava/util/Map;

    if-eqz p3, :cond_b

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;

    if-eqz p3, :cond_b

    invoke-interface {p3, p1, p2}, Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;->hasCompilationUnit(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    return v2

    :cond_b
    return v1
.end method

.method public isOnModulePath(Lorg/eclipse/jdt/internal/core/ClasspathEntry;)Z
    .locals 0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->isModular()Z

    move-result p1

    return p1
.end method

.method public isPackage(Ljava/lang/String;[C)Z
    .locals 7

    invoke-static {p2}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->get([C)Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;

    move-result-object v0

    invoke-static {}, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->$SWITCH_TABLE$org$eclipse$jdt$internal$compiler$env$IModuleAwareNameEnvironment$LookupStrategy()[I

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eq v1, v2, :cond_6

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    invoke-static {p2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v5

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->modulePathEntries:Ljava/util/Map;

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;

    if-nez p2, :cond_0

    return v4

    :cond_0
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_2

    :cond_1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->binaryLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    array-length p2, p2

    move v1, v4

    :goto_0
    if-lt v1, p2, :cond_4

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    array-length v2, p2

    move p2, v4

    :goto_1
    if-lt p2, v2, :cond_2

    return v4

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    aget-object v1, v1, p2

    new-instance v6, Lorg/eclipse/jdt/internal/core/builder/i;

    invoke-direct {v6}, Lorg/eclipse/jdt/internal/core/builder/i;-><init>()V

    invoke-virtual {v0, v1, v6}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->matches(Ljava/lang/Object;Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    aget-object v1, v1, p2

    invoke-virtual {v1, p1, v5}, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->isPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v3

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->binaryLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    aget-object v2, v2, v1

    new-instance v6, Lorg/eclipse/jdt/internal/core/builder/e;

    invoke-direct {v6}, Lorg/eclipse/jdt/internal/core/builder/e;-><init>()V

    invoke-virtual {v0, v2, v6}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->matches(Ljava/lang/Object;Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->binaryLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, v5}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->isPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    return v3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->modulePathEntries:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    return v4

    :cond_8
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;

    if-eqz v1, :cond_b

    check-cast v0, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;->getClasspathLocations()[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    move-result-object v1

    array-length v2, v1

    move v0, v4

    :goto_4
    if-lt v0, v2, :cond_9

    goto :goto_3

    :cond_9
    aget-object v6, v1, v0

    invoke-virtual {v6, p1, v5}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->isPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    return v3

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_b
    instance-of v1, v0, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    if-eqz v1, :cond_7

    check-cast v0, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    invoke-virtual {v0, p1, v5}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->isPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setNames([Ljava/lang/String;[Lorg/eclipse/jdt/internal/core/builder/SourceFile;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->initialTypeNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    goto :goto_1

    :cond_0
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    array-length v3, p1

    invoke-direct {v2, v3}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;-><init>(I)V

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->initialTypeNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    array-length v2, p1

    move v3, v1

    :goto_0
    if-lt v3, v2, :cond_6

    :goto_1
    if-nez p2, :cond_1

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->additionalUnits:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    goto :goto_3

    :cond_1
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    array-length v0, p2

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->additionalUnits:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    array-length v4, p2

    move p1, v1

    :goto_2
    if-lt p1, v4, :cond_4

    :goto_3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    array-length v0, p1

    move p1, v1

    :goto_4
    if-lt p1, v0, :cond_3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->binaryLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    array-length p2, p1

    :goto_5
    if-lt v1, p2, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->binaryLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_3
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->reset()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_4
    aget-object v0, p2, p1

    if-eqz v0, :cond_5

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->additionalUnits:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->initialTypeName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->initialTypeNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    aget-object v5, p1, v3

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->add(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
