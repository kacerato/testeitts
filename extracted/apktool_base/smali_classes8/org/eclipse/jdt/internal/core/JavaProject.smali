.class public Lorg/eclipse/jdt/internal/core/JavaProject;
.super Lorg/eclipse/jdt/internal/core/Openable;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IJavaProject;
.implements Lorg/eclipse/core/resources/IProjectNature;
.implements Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/JavaProject$ClasspathResolutionBreakpointListener;,
        Lorg/eclipse/jdt/internal/core/JavaProject$JImageModuleFragmentBridge;,
        Lorg/eclipse/jdt/internal/core/JavaProject$ModuleLookup;,
        Lorg/eclipse/jdt/internal/core/JavaProject$ResolvedClasspath;
    }
.end annotation


# static fields
.field public static final CLASSPATH_FILENAME:Ljava/lang/String; = ".classpath"

.field private static CP_RESOLUTION_BP_LISTENERS:Ljava/util/ArrayList; = null

.field public static final DEFAULT_PREFERENCES_DIRNAME:Ljava/lang/String; = ".settings"

.field public static final INVALID_CLASSPATH:[Lorg/eclipse/jdt/core/IClasspathEntry;

.field protected static final IS_CASE_SENSITIVE:Z

.field public static final JAVA_CORE_PREFS_FILE:Ljava/lang/String; = "org.eclipse.jdt.core.prefs"

.field protected static final NO_PREREQUISITES:[Ljava/lang/String;

.field private static final PREF_FILENAME:Ljava/lang/String; = ".jprefs"

.field private static final RESOLUTION_IN_PROGRESS:[Lorg/eclipse/jdt/core/IClasspathEntry;


# instance fields
.field private preferencesChangeListener:Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$IPreferenceChangeListener;

.field private preferencesNodeListener:Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$INodeChangeListener;

.field protected project:Lorg/eclipse/core/resources/IProject;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/eclipse/jdt/core/IClasspathEntry;

    sput-object v1, Lorg/eclipse/jdt/internal/core/JavaProject;->INVALID_CLASSPATH:[Lorg/eclipse/jdt/core/IClasspathEntry;

    new-instance v1, Ljava/io/File;

    const-string v2, "Temp"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, "temp"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    sput-boolean v1, Lorg/eclipse/jdt/internal/core/JavaProject;->IS_CASE_SENSITIVE:Z

    sget-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    sput-object v1, Lorg/eclipse/jdt/internal/core/JavaProject;->NO_PREREQUISITES:[Ljava/lang/String;

    new-array v0, v0, [Lorg/eclipse/jdt/core/IClasspathEntry;

    sput-object v0, Lorg/eclipse/jdt/internal/core/JavaProject;->RESOLUTION_IN_PROGRESS:[Lorg/eclipse/jdt/core/IClasspathEntry;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/Openable;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/core/resources/IProject;Lorg/eclipse/jdt/internal/core/JavaElement;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/Openable;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;)V

    .line 3
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaProject;->project:Lorg/eclipse/core/resources/IProject;

    return-void
.end method

.method public static declared-synchronized addCPResolutionBPListener(Lorg/eclipse/jdt/internal/core/JavaProject$ClasspathResolutionBreakpointListener;)V
    .locals 2

    const-class v0, Lorg/eclipse/jdt/internal/core/JavaProject;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/eclipse/jdt/internal/core/JavaProject;->CP_RESOLUTION_BP_LISTENERS:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lorg/eclipse/jdt/internal/core/JavaProject;->CP_RESOLUTION_BP_LISTENERS:Ljava/util/ArrayList;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lorg/eclipse/jdt/internal/core/JavaProject;->CP_RESOLUTION_BP_LISTENERS:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private addToResult(Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/internal/core/JavaProject$ResolvedClasspath;Ljava/util/LinkedHashSet;Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;Ljava/util/Map;ZLjava/util/Map;)V
    .locals 2

    iget-object v0, p3, Lorg/eclipse/jdt/internal/core/JavaProject$ResolvedClasspath;->rawReverseMap:Ljava/util/HashMap;

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p3, Lorg/eclipse/jdt/internal/core/JavaProject$ResolvedClasspath;->rawReverseMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p3, Lorg/eclipse/jdt/internal/core/JavaProject$ResolvedClasspath;->rootPathToResolvedEntries:Ljava/util/Map;

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p4, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    if-eqz p7, :cond_0

    invoke-interface {p6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    if-eqz p1, :cond_0

    move-object p3, p2

    check-cast p3, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-direct {p0, p3, p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->copyFromOldChainedEntry(Lorg/eclipse/jdt/internal/core/ClasspathEntry;Lorg/eclipse/jdt/internal/core/ClasspathEntry;)V

    :cond_0
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->isExternalFolderPath(Lorg/eclipse/core/runtime/IPath;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p5, v1, p3}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->addFolder(Lorg/eclipse/core/runtime/IPath;Z)Lorg/eclipse/core/resources/IFolder;

    :cond_1
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IClasspathEntry;->getSourceAttachmentPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-direct {p0, p1, p8}, Lorg/eclipse/jdt/internal/core/JavaProject;->driveExists(Lorg/eclipse/core/runtime/IPath;Ljava/util/Map;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->isExternalFolderPath(Lorg/eclipse/core/runtime/IPath;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p5, p1, p3}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->addFolder(Lorg/eclipse/core/runtime/IPath;Z)Lorg/eclipse/core/resources/IFolder;

    :cond_2
    return-void
.end method

.method private static areClasspathsEqual([Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IClasspathEntry;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    .line 5
    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_2

    .line 6
    :cond_0
    array-length v1, p2

    .line 7
    array-length v2, p0

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    move v2, v0

    :goto_0
    add-int/lit8 v4, v1, -0x1

    if-lt v2, v4, :cond_4

    .line 8
    aget-object p0, p2, v4

    .line 9
    invoke-interface {p0}, Lorg/eclipse/jdt/core/IClasspathEntry;->getContentKind()I

    move-result p2

    const/16 v1, 0xa

    if-ne p2, v1, :cond_3

    .line 10
    invoke-interface {p0}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    return v3

    :cond_3
    :goto_1
    return v0

    .line 11
    :cond_4
    aget-object v4, p2, v2

    aget-object v5, p0, v2

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    return v0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    return v0
.end method

.method private static areClasspathsEqual([Lorg/eclipse/jdt/core/IClasspathEntry;[Lorg/eclipse/jdt/core/IClasspathEntry;)Z
    .locals 5

    if-eq p0, p1, :cond_5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 12
    :cond_0
    array-length v1, p0

    if-eqz p1, :cond_4

    .line 13
    array-length v2, p1

    if-eq v2, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_0
    if-lt v2, v1, :cond_2

    goto :goto_2

    .line 14
    :cond_2
    aget-object v3, p0, v2

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v0

    :cond_5
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method public static areClasspathsEqual([Lorg/eclipse/jdt/core/IClasspathEntry;[Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;)Z
    .locals 5

    .line 1
    array-length v0, p0

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v1, v2

    :goto_0
    if-lt v1, v0, :cond_3

    if-nez p2, :cond_2

    if-nez p3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2

    .line 3
    :cond_2
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 4
    :cond_3
    aget-object v3, p0, v1

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static breakpoint(ILorg/eclipse/jdt/internal/core/JavaProject;)V
    .locals 3

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaProject;->getBPListeners()[Lorg/eclipse/jdt/internal/core/JavaProject$ClasspathResolutionBreakpointListener;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    return-void

    :cond_1
    aget-object v2, p1, v1

    invoke-virtual {v2, p0}, Lorg/eclipse/jdt/internal/core/JavaProject$ClasspathResolutionBreakpointListener;->breakpoint(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static synthetic c(Lorg/eclipse/jdt/core/IPackageFragmentRoot;)Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->lambda$6(Lorg/eclipse/jdt/core/IPackageFragmentRoot;)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object p0

    return-object p0
.end method

.method public static canonicalizedPath(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/runtime/IPath;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method private computeExpandedClasspath(Lorg/eclipse/jdt/internal/core/ClasspathEntry;Ljava/util/HashMap;Ljava/util/ArrayList;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/ClasspathEntry;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lorg/eclipse/jdt/internal/core/ClasspathEntry;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v3

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v0, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    move v7, v5

    :goto_0
    array-length v8, v3

    move v9, v5

    :goto_1
    if-lt v9, v8, :cond_1

    return-void

    :cond_1
    aget-object v10, v3, v9

    check-cast v10, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    if-eqz p4, :cond_2

    invoke-interface {v10}, Lorg/eclipse/jdt/core/IClasspathEntry;->isTest()Z

    move-result v11

    if-eqz v11, :cond_2

    goto/16 :goto_6

    :cond_2
    if-nez v7, :cond_3

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->isExported()Z

    move-result v11

    if-eqz v11, :cond_b

    :cond_3
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->rootID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getEntryKind()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_a

    if-nez p4, :cond_4

    invoke-interface {v10}, Lorg/eclipse/jdt/core/IClasspathEntry;->isWithoutTestCode()Z

    move-result v12

    if-nez v12, :cond_4

    move v12, v5

    goto :goto_2

    :cond_4
    move v12, v6

    :goto_2
    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v13, v14, :cond_5

    goto/16 :goto_6

    :cond_5
    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v13, v15, :cond_9

    if-eqz v12, :cond_6

    goto/16 :goto_6

    :cond_6
    invoke-virtual {v1, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v13, v5

    :goto_3
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lt v13, v14, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->rootID()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    const-string v11, "without_test_code"

    invoke-virtual {v14, v11}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->withExtraAttributeRemoved(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    move-result-object v11

    invoke-virtual {v2, v13, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_4
    invoke-virtual {v10, v0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->combineWith(Lorg/eclipse/jdt/internal/core/ClasspathEntry;)Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    move-result-object v11

    goto :goto_5

    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_9
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v1, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->combineWith(Lorg/eclipse/jdt/internal/core/ClasspathEntry;)Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v10

    invoke-interface {v4, v10}, Lorg/eclipse/core/resources/IWorkspaceRoot;->findMember(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IResource;

    move-result-object v10

    if-eqz v10, :cond_b

    invoke-interface {v10}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result v13

    const/4 v14, 0x4

    if-ne v13, v14, :cond_b

    check-cast v10, Lorg/eclipse/core/resources/IProject;

    invoke-static {v10}, Lorg/eclipse/jdt/internal/core/JavaProject;->hasJavaNature(Lorg/eclipse/core/resources/IProject;)Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-static {v10}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v10

    check-cast v10, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-direct {v10, v11, v1, v2, v12}, Lorg/eclipse/jdt/internal/core/JavaProject;->computeExpandedClasspath(Lorg/eclipse/jdt/internal/core/ClasspathEntry;Ljava/util/HashMap;Ljava/util/ArrayList;Z)V

    goto :goto_6

    :cond_a
    invoke-virtual {v1, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    invoke-virtual {v10, v0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->combineWith(Lorg/eclipse/jdt/internal/core/ClasspathEntry;)Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v1, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1
.end method

.method private copyFromOldChainedEntry(Lorg/eclipse/jdt/internal/core/ClasspathEntry;Lorg/eclipse/jdt/internal/core/ClasspathEntry;)V
    .locals 1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getSourceAttachmentPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p1, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->sourceAttachmentPath:Lorg/eclipse/core/runtime/IPath;

    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getSourceAttachmentRootPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p1, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->sourceAttachmentRootPath:Lorg/eclipse/core/runtime/IPath;

    :cond_1
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getExtraAttributes()[Lorg/eclipse/jdt/core/IClasspathAttribute;

    move-result-object p2

    if-eqz p2, :cond_2

    iput-object p2, p1, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->extraAttributes:[Lorg/eclipse/jdt/core/IClasspathAttribute;

    :cond_2
    return-void
.end method

.method public static synthetic d(Lorg/eclipse/jdt/core/IJavaProject;)Z
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->lambda$3(Lorg/eclipse/jdt/core/IJavaProject;)Z

    move-result p0

    return p0
.end method

.method public static defaultRootModules(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lorg/eclipse/jdt/core/IPackageFragmentRoot;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/eclipse/jdt/internal/core/f;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/f;-><init>()V

    new-instance v1, Lorg/eclipse/jdt/internal/core/g;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/core/g;-><init>()V

    invoke-static {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->internalDefaultRootModules(Ljava/lang/Iterable;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private driveExists(Lorg/eclipse/core/runtime/IPath;Ljava/util/Map;)Z
    .locals 2

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->getDevice()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-nez v1, :cond_2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public static synthetic e(Lorg/eclipse/core/resources/IWorkspaceRoot;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IResource;
    .locals 0

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->lambda$0(Lorg/eclipse/core/resources/IWorkspaceRoot;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IResource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lorg/eclipse/core/resources/IResource;)Z
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->lambda$1(Lorg/eclipse/core/resources/IResource;)Z

    move-result p0

    return p0
.end method

.method private filterLimitedModules(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;Ljava/util/List;)Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/core/runtime/IPath;",
            "Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance p3, Lorg/eclipse/jdt/internal/core/JavaProject$ModuleLookup;

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->toFile()Ljava/io/File;

    move-result-object p1

    invoke-direct {p3, p1}, Lorg/eclipse/jdt/internal/core/JavaProject$ModuleLookup;-><init>(Ljava/io/File;)V

    const/4 p1, 0x0

    move v1, p1

    :goto_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size()I

    move-result v2

    if-lt v1, v2, :cond_3

    :goto_1
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    iget-object p1, p3, Lorg/eclipse/jdt/internal/core/JavaProject$ModuleLookup;->resultModuleSet:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    invoke-direct {v1, p1}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;-><init>(I)V

    iget-object p1, p3, Lorg/eclipse/jdt/internal/core/JavaProject$ModuleLookup;->resultModuleSet:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/IModule;

    invoke-virtual {p3, p1}, Lorg/eclipse/jdt/internal/core/JavaProject$ModuleLookup;->getRoot(Lorg/eclipse/jdt/internal/compiler/env/IModule;)Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->add(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;->moduleName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p3, v1}, Lorg/eclipse/jdt/internal/core/JavaProject$ModuleLookup;->addTransitive(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v1}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;

    invoke-virtual {p3, v2}, Lorg/eclipse/jdt/internal/core/JavaProject$ModuleLookup;->recordRoot(Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private findPackageFragment0(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IPackageFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->newNameLookup(Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/internal/core/NameLookup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/NameLookup;->findPackageFragment(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic g(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IJavaProject;
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->lambda$2(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized getBPListeners()[Lorg/eclipse/jdt/internal/core/JavaProject$ClasspathResolutionBreakpointListener;
    .locals 3

    const-class v0, Lorg/eclipse/jdt/internal/core/JavaProject;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/eclipse/jdt/internal/core/JavaProject;->CP_RESOLUTION_BP_LISTENERS:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lorg/eclipse/jdt/internal/core/JavaProject$ClasspathResolutionBreakpointListener;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/eclipse/jdt/internal/core/JavaProject$ClasspathResolutionBreakpointListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getJavaCommandIndex([Lorg/eclipse/core/resources/ICommand;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    aget-object v1, p1, v0

    invoke-interface {v1}, Lorg/eclipse/core/resources/ICommand;->getBuilderName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.javabuilder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getPluginWorkingLocation()Lorg/eclipse/core/runtime/IPath;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaProject;->project:Lorg/eclipse/core/resources/IProject;

    const-string v1, "org.eclipse.jdt.core"

    invoke-interface {v0, v1}, Lorg/eclipse/core/resources/IProject;->getWorkingLocation(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic h(Lorg/eclipse/jdt/core/IJavaProject;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->lambda$4(Lorg/eclipse/jdt/core/IJavaProject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hasJavaNature(Lorg/eclipse/core/resources/IProject;)Z
    .locals 1

    :try_start_0
    const-string v0, "org.eclipse.jdt.core.javanature"

    invoke-interface {p0, v0}, Lorg/eclipse/core/resources/IProject;->hasNature(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string v0, " "

    invoke-interface {p0}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private hasUTF8BOM([B)Z
    .locals 5

    array-length v0, p1

    sget-object v1, Lorg/eclipse/core/runtime/content/IContentDescription;->BOM_UTF_8:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_2

    sget-object v0, Lorg/eclipse/core/runtime/content/IContentDescription;->BOM_UTF_8:[B

    array-length v0, v0

    move v1, v2

    :goto_0
    if-lt v1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    sget-object v3, Lorg/eclipse/core/runtime/content/IContentDescription;->BOM_UTF_8:[B

    aget-byte v3, v3, v1

    aget-byte v4, p1, v1

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static internalDefaultRootModules(Ljava/lang/Iterable;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Function<",
            "TT;",
            "Lorg/eclipse/jdt/internal/compiler/env/IModule;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "java.se"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_3

    return-object v0

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, "java."

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    xor-int/lit8 v6, v5, 0x1

    if-nez v2, :cond_4

    or-int/2addr v6, v5

    :cond_4
    if-eqz v6, :cond_2

    invoke-interface {p2, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/env/IModule;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->exports()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

    move-result-object p0

    array-length v5, p0

    move v6, v3

    :goto_2
    if-lt v6, v5, :cond_5

    goto :goto_1

    :cond_5
    aget-object v7, p0, v6

    invoke-interface {v7}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;->isQualified()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method private isOnClasspathEntry(Lorg/eclipse/core/runtime/IPath;ZZLorg/eclipse/jdt/core/IClasspathEntry;)Z
    .locals 2

    invoke-interface {p4}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return v1

    :cond_0
    invoke-interface {v0, p1}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result p3

    if-eqz p3, :cond_1

    check-cast p4, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->fullInclusionPatternChars()[[C

    move-result-object p3

    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->fullExclusionPatternChars()[[C

    move-result-object p4

    invoke-static {p1, p3, p4, p2}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/core/runtime/IPath;[[C[[CZ)Z

    move-result p2

    if-nez p2, :cond_1

    return v1

    :cond_1
    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->isAbsolute()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object p2

    invoke-interface {p2}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object p2

    invoke-interface {p2}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/eclipse/core/runtime/IPath;->append(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private isUnNamedModule()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->getModule()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getRawClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-lt v3, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPatchedModules(Lorg/eclipse/jdt/core/IClasspathEntry;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static synthetic lambda$0(Lorg/eclipse/core/resources/IWorkspaceRoot;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IResource;
    .locals 0

    invoke-interface {p0, p1}, Lorg/eclipse/core/resources/IWorkspaceRoot;->findMember(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IResource;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$1(Lorg/eclipse/core/resources/IResource;)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$2(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IJavaProject;
    .locals 0

    check-cast p0, Lorg/eclipse/core/resources/IProject;

    invoke-static {p0}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$3(Lorg/eclipse/jdt/core/IJavaProject;)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$4(Lorg/eclipse/jdt/core/IJavaProject;)Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$6(Lorg/eclipse/jdt/core/IPackageFragmentRoot;)Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 1

    instance-of v0, p0, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;->getModule()Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private loadModulesInJimage(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;Ljava/util/Map;Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/core/IClasspathEntry;)V
    .locals 9

    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->toFile()Ljava/io/File;

    move-result-object v0

    new-instance v8, Lorg/eclipse/jdt/internal/core/JavaProject$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/jdt/internal/core/JavaProject$1;-><init>(Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;Ljava/util/Map;Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/core/IClasspathEntry;)V

    sget p2, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->NOTIFY_MODULES:I

    invoke-static {v0, v8, p2}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->walkModuleImage(Ljava/io/File;Lorg/eclipse/jdt/internal/compiler/util/JRTUtil$JrtFileVisitor;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Error reading modules from "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    invoke-static {p2, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->log(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private loadPreferences()Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;
    .locals 4

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPluginWorkingLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, ".jprefs"

    invoke-interface {v0, v2}, Lorg/eclipse/core/runtime/IPath;->append(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lorg/eclipse/core/runtime/Platform;->getPreferencesService()Lorg/eclipse/core/runtime/preferences/IPreferencesService;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/eclipse/core/runtime/preferences/IPreferencesService;->readPreferences(Ljava/io/InputStream;)Lorg/eclipse/core/runtime/preferences/IExportedPreferences;

    move-result-object v1
    :try_end_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_1
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_0
    throw v0

    :catch_1
    move-object v2, v1

    :catch_2
    if-eqz v2, :cond_1

    goto :goto_0

    :catch_3
    move-object v2, v1

    :catch_4
    if-eqz v2, :cond_1

    goto :goto_0

    :catch_5
    :cond_1
    :goto_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    return-object v1
.end method

.method private readFileEntries(Ljava/util/Map;)[[Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 6

    const-string v0, ".classpath"

    const-string v1, "Exception while reading "

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->readFileEntriesWithException(Ljava/util/Map;)[[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p1
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/eclipse/jdt/internal/core/ClasspathEntry$AssertionFailedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/core/runtime/IPath;->append(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    new-array p1, v4, [[Lorg/eclipse/jdt/core/IClasspathEntry;

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaProject;->INVALID_CLASSPATH:[Lorg/eclipse/jdt/core/IClasspathEntry;

    aput-object v0, p1, v3

    sget-object v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_ENTRIES:[Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    aput-object v0, p1, v2

    return-object p1

    :catch_1
    move-exception p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/core/runtime/IPath;->append(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    new-array p1, v4, [[Lorg/eclipse/jdt/core/IClasspathEntry;

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaProject;->INVALID_CLASSPATH:[Lorg/eclipse/jdt/core/IClasspathEntry;

    aput-object v0, p1, v3

    sget-object v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_ENTRIES:[Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    aput-object v0, p1, v2

    return-object p1

    :catch_2
    move-exception p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/core/runtime/IPath;->append(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    new-array p1, v4, [[Lorg/eclipse/jdt/core/IClasspathEntry;

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaProject;->INVALID_CLASSPATH:[Lorg/eclipse/jdt/core/IClasspathEntry;

    aput-object v0, p1, v3

    sget-object v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_ENTRIES:[Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    aput-object v0, p1, v2

    return-object p1
.end method

.method public static declared-synchronized removeCPResolutionBPListener(Lorg/eclipse/jdt/internal/core/JavaProject$ClasspathResolutionBreakpointListener;)V
    .locals 2

    const-class v0, Lorg/eclipse/jdt/internal/core/JavaProject;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/eclipse/jdt/internal/core/JavaProject;->CP_RESOLUTION_BP_LISTENERS:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object p0, Lorg/eclipse/jdt/internal/core/JavaProject;->CP_RESOLUTION_BP_LISTENERS:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    sput-object p0, Lorg/eclipse/jdt/internal/core/JavaProject;->CP_RESOLUTION_BP_LISTENERS:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private setJavaCommand(Lorg/eclipse/core/resources/IProjectDescription;Lorg/eclipse/core/resources/ICommand;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/eclipse/core/resources/IProjectDescription;->getBuildSpec()[Lorg/eclipse/core/resources/ICommand;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getJavaCommandIndex([Lorg/eclipse/core/resources/ICommand;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [Lorg/eclipse/core/resources/ICommand;

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p2, v1, v4

    move-object v0, v1

    goto :goto_0

    :cond_0
    aput-object p2, v0, v1

    :goto_0
    invoke-interface {p1, v0}, Lorg/eclipse/core/resources/IProjectDescription;->setBuildSpec([Lorg/eclipse/core/resources/ICommand;)V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/JavaProject;->project:Lorg/eclipse/core/resources/IProject;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lorg/eclipse/core/resources/IProject;->setDescription(Lorg/eclipse/core/resources/IProjectDescription;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method private updatePreferences(Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;)V
    .locals 7

    const-string v0, ""

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->loadPreferences()Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {v1}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->childrenNames()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-lt v3, v4, :cond_0

    invoke-interface {p1}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->flush()V

    goto :goto_1

    :cond_0
    aget-object v4, v2, v3

    invoke-interface {v1, v4, v0}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {p1, v4, v5}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/osgi/service/prefs/BackingStoreException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method

.method public static validateCycles(Ljava/util/Map;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const-string v0, "message"

    const-string v1, "severity"

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getProjects()[Lorg/eclipse/core/resources/IProject;

    move-result-object v9

    array-length v10, v9

    new-array v11, v10, [Lorg/eclipse/jdt/internal/core/JavaProject;

    new-instance v12, Ljava/util/LinkedHashSet;

    invoke-direct {v12}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x0

    move v8, v15

    :goto_0
    if-lt v8, v10, :cond_6

    invoke-interface {v12}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/eclipse/jdt/internal/core/h;

    invoke-direct {v4, v2}, Lorg/eclipse/jdt/internal/core/h;-><init>(Lorg/eclipse/core/resources/IWorkspaceRoot;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/eclipse/jdt/internal/core/i;

    invoke-direct {v3}, Lorg/eclipse/jdt/internal/core/i;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/eclipse/jdt/internal/core/j;

    invoke-direct {v3}, Lorg/eclipse/jdt/internal/core/j;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/eclipse/jdt/internal/core/k;

    invoke-direct {v3}, Lorg/eclipse/jdt/internal/core/k;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/eclipse/jdt/internal/core/l;

    invoke-direct {v3}, Lorg/eclipse/jdt/internal/core/l;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    const-string v3, ", "

    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    move v2, v15

    :goto_1
    if-lt v2, v10, :cond_0

    return-void

    :cond_0
    aget-object v4, v11, v2

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/JavaProject;->getCycleMarker()Lorg/eclipse/core/resources/IMarker;

    move-result-object v5

    const-string v7, "org.eclipse.jdt.core.circularClasspath"

    invoke-virtual {v4, v7, v6}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    const-string v8, "error"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x2

    :cond_1
    const/16 v7, 0x3e9

    if-eqz v5, :cond_3

    :try_start_0
    invoke-interface {v5, v1}, Lorg/eclipse/core/resources/IMarker;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v8, v6, :cond_2

    invoke-interface {v5, v1, v6}, Lorg/eclipse/core/resources/IMarker;->setAttribute(Ljava/lang/String;I)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_2
    const-string v6, ""

    invoke-interface {v5, v0, v6}, Lorg/eclipse/core/resources/IMarker;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    invoke-direct {v8, v7, v4, v3}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-interface {v5, v0, v4}, Lorg/eclipse/core/resources/IMarker;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    new-instance v1, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {v1, v0}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw v1

    :cond_3
    new-instance v5, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    invoke-direct {v5, v7, v4, v3}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/internal/core/JavaProject;->createClasspathProblemMarker(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v4, v6, v15, v15}, Lorg/eclipse/jdt/internal/core/JavaProject;->flushClasspathProblemMarkers(ZZZ)V

    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    aget-object v3, v9, v8

    invoke-static {v3}, Lorg/eclipse/jdt/internal/core/JavaProject;->hasJavaNature(Lorg/eclipse/core/resources/IProject;)Z

    move-result v3

    if-eqz v3, :cond_7

    aget-object v3, v9, v8

    invoke-static {v3}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/core/JavaProject;

    aput-object v3, v11, v8

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    move-object v4, v14

    move-object v5, v12

    move-object v6, v2

    move-object v7, v13

    move/from16 v16, v8

    move-object/from16 v8, p0

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/JavaProject;->updateCycleParticipants(Ljava/util/ArrayList;Ljava/util/LinkedHashSet;Lorg/eclipse/core/resources/IWorkspaceRoot;Ljava/util/HashSet;Ljava/util/Map;)V

    goto :goto_5

    :cond_7
    move/from16 v16, v8

    :goto_5
    add-int/lit8 v8, v16, 0x1

    goto/16 :goto_0
.end method

.method private verbose_reentering_classpath_resolution()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CPResolution: reentering raw classpath resolution, will use empty classpath instead\tproject: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\tinvocation stack trace:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "<Fake exception>"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    return-void
.end method


# virtual methods
.method public addToBuildSpec(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaProject;->project:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->getDescription()Lorg/eclipse/core/resources/IProjectDescription;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IProjectDescription;->getBuildSpec()[Lorg/eclipse/core/resources/ICommand;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getJavaCommandIndex([Lorg/eclipse/core/resources/ICommand;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IProjectDescription;->newCommand()Lorg/eclipse/core/resources/ICommand;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/eclipse/core/resources/ICommand;->setBuilderName(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->setJavaCommand(Lorg/eclipse/core/resources/IProjectDescription;Lorg/eclipse/core/resources/ICommand;)V

    :cond_0
    return-void
.end method

.method public buildStructure(Lorg/eclipse/jdt/internal/core/OpenableElementInfo;Lorg/eclipse/core/runtime/IProgressMonitor;Ljava/util/Map;Lorg/eclipse/core/resources/IResource;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p2

    const/4 p3, 0x0

    const/4 p4, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, p4, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->computePackageFragmentRoots([Lorg/eclipse/jdt/core/IClasspathEntry;ZZLjava/util/Map;)[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->setChildren([Lorg/eclipse/jdt/core/IJavaElement;)V

    array-length v1, p2

    :goto_0
    if-lt p3, v1, :cond_0

    return p4

    :cond_0
    aget-object v2, p2, p3

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->getKind()I

    move-result v3

    if-eq v3, p4, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->getModuleDescription()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v2

    if-eqz v2, :cond_3

    if-nez v0, :cond_2

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getModulePathManager()Lorg/eclipse/jdt/internal/core/ModuleSourcePathManager;

    move-result-object v0

    invoke-virtual {v0, v2, p0}, Lorg/eclipse/jdt/internal/core/ModuleSourcePathManager;->addEntry(Lorg/eclipse/jdt/core/IModuleDescription;Lorg/eclipse/jdt/internal/core/JavaProject;)V

    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->setModule(Lorg/eclipse/jdt/core/IModuleDescription;)V

    move-object v0, v2

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance p2, Lorg/eclipse/core/runtime/Status;

    sget-object p3, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_duplicateEntryPath:Ljava/lang/String;

    const-string p4, "module-info.java"

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p4, v0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x4

    const-string v0, "org.eclipse.jdt.core"

    invoke-direct {p2, p4, v0, p3}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/IStatus;)V

    throw p1

    :cond_3
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaProject;->project:Lorg/eclipse/core/resources/IProject;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->hasJavaNature(Lorg/eclipse/core/resources/IProject;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaProject;->project:Lorg/eclipse/core/resources/IProject;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getPerProjectInfo(Lorg/eclipse/core/resources/IProject;Z)Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->preferences:Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->parent()Lorg/osgi/service/prefs/Preferences;

    move-result-object v1

    check-cast v1, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaProject;->preferencesNodeListener:Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$INodeChangeListener;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1, v2}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->removeNodeChangeListener(Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$INodeChangeListener;)V

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/JavaProject;->preferencesNodeListener:Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$INodeChangeListener;

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaProject;->preferencesChangeListener:Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$IPreferenceChangeListener;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->preferences:Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    invoke-interface {v0, v1}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->removePreferenceChangeListener(Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$IPreferenceChangeListener;)V

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/JavaProject;->preferencesChangeListener:Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$IPreferenceChangeListener;

    :cond_1
    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->close()V

    return-void
.end method

.method public computePackageFragmentRoots(Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;Ljava/util/HashSet;Lorg/eclipse/jdt/core/IClasspathEntry;ZLjava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v7, p6

    .line 5
    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/JavaProject;->computePackageFragmentRoots(Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;Ljava/util/HashSet;Lorg/eclipse/jdt/core/IClasspathEntry;ZZLjava/util/Map;)V

    return-void
.end method

.method public computePackageFragmentRoots(Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;Ljava/util/HashSet;Lorg/eclipse/jdt/core/IClasspathEntry;ZZLjava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    .line 4
    invoke-virtual/range {v0 .. v8}, Lorg/eclipse/jdt/internal/core/JavaProject;->computePackageFragmentRoots(Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;Ljava/util/HashSet;Lorg/eclipse/jdt/core/IClasspathEntry;ZZLjava/util/Map;Z)V

    return-void
.end method

.method public computePackageFragmentRoots(Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;Ljava/util/HashSet;Lorg/eclipse/jdt/core/IClasspathEntry;ZZLjava/util/Map;Z)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v5, p2

    move-object/from16 v4, p3

    move-object/from16 v3, p7

    .line 6
    move-object v0, v7

    check-cast v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->rootID()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-eqz p8, :cond_1

    .line 8
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IClasspathEntry;->isTest()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 9
    :cond_1
    iget-object v0, v6, Lorg/eclipse/jdt/internal/core/JavaProject;->project:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    .line 10
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v8

    .line 11
    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v1

    .line 12
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v9

    const/16 v17, 0x0

    const/4 v10, 0x1

    if-eq v9, v10, :cond_b

    const/4 v11, 0x2

    if-eq v9, v11, :cond_7

    const/4 v1, 0x3

    if-eq v9, v1, :cond_2

    :goto_0
    goto :goto_1

    .line 13
    :cond_2
    invoke-interface {v0, v8}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    invoke-static {v8, v10}, Lorg/eclipse/jdt/internal/core/JavaModel;->getTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 15
    :cond_3
    instance-of v1, v0, Lorg/eclipse/core/resources/IFolder;

    if-nez v1, :cond_4

    instance-of v1, v0, Lorg/eclipse/core/resources/IProject;

    if-eqz v1, :cond_5

    .line 16
    :cond_4
    check-cast v0, Lorg/eclipse/core/resources/IResource;

    invoke-virtual {v6, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPackageFragmentRoot(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v17

    :cond_5
    :goto_1
    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    :cond_6
    :goto_2
    move-object/from16 v0, v17

    goto/16 :goto_7

    :cond_7
    if-nez p5, :cond_8

    return-void

    :cond_8
    if-eqz p4, :cond_9

    .line 17
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->isExported()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 18
    :cond_9
    invoke-interface {v1, v8}, Lorg/eclipse/core/resources/IWorkspaceRoot;->findMember(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 19
    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result v1

    const/4 v8, 0x4

    if-ne v1, v8, :cond_5

    .line 20
    check-cast v0, Lorg/eclipse/core/resources/IProject;

    .line 21
    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->hasJavaNature(Lorg/eclipse/core/resources/IProject;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 22
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-static {v0}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lorg/eclipse/jdt/internal/core/JavaProject;

    .line 24
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/core/JavaProject;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v9

    if-nez v3, :cond_a

    move-object v12, v7

    goto :goto_3

    .line 25
    :cond_a
    move-object v0, v7

    check-cast v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    move-object/from16 v1, p4

    check-cast v1, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->combineWith(Lorg/eclipse/jdt/internal/core/ClasspathEntry;)Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    move-result-object v0

    move-object v12, v0

    :goto_3
    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v13, p5

    move/from16 v14, p6

    move-object/from16 v15, p7

    move/from16 v16, p8

    .line 26
    invoke-virtual/range {v8 .. v16}, Lorg/eclipse/jdt/internal/core/JavaProject;->computePackageFragmentRoots([Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;Ljava/util/HashSet;Lorg/eclipse/jdt/core/IClasspathEntry;ZZLjava/util/Map;Z)V

    goto :goto_0

    :cond_b
    if-eqz p4, :cond_c

    .line 27
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->isExported()Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 28
    :cond_c
    invoke-static {v8, v10}, Lorg/eclipse/jdt/internal/core/JavaModel;->getTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    .line 29
    :cond_d
    instance-of v1, v0, Lorg/eclipse/core/resources/IResource;

    if-eqz v1, :cond_e

    .line 30
    check-cast v0, Lorg/eclipse/core/resources/IResource;

    invoke-virtual {v6, v0, v8}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPackageFragmentRoot(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v17

    goto :goto_1

    .line 31
    :cond_e
    instance-of v1, v0, Ljava/io/File;

    if-eqz v1, :cond_5

    .line 32
    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/JavaModel;->isFile(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 33
    check-cast v0, Ljava/io/File;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/JavaModel;->isJimage(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 34
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPerProjectInfo()Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    move-result-object v9

    .line 35
    iget-object v0, v9, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->jrtRoots:Ljava/util/Map;

    if-eqz v0, :cond_10

    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_4

    .line 36
    :cond_f
    iget-object v0, v9, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->jrtRoots:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    goto :goto_5

    .line 37
    :cond_10
    :goto_4
    new-instance v10, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    invoke-direct {v10}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;-><init>()V

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v11, v2

    move-object v2, v10

    move-object v12, v3

    move-object/from16 v3, p7

    move-object v13, v4

    move-object/from16 v4, p1

    move-object v14, v5

    move-object/from16 v5, p4

    .line 38
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/JavaProject;->loadModulesInJimage(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;Ljava/util/Map;Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/core/IClasspathEntry;)V

    .line 39
    invoke-virtual {v9, v8, v10}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->setJrtPackageRoots(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;)V

    .line 40
    invoke-virtual {v13, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object v0, v10

    :goto_5
    if-eqz p6, :cond_13

    .line 41
    const-string v1, "limit-modules"

    invoke-static {v7, v1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getExtraAttribute(Lorg/eclipse/jdt/core/IClasspathEntry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 42
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_6

    .line 43
    :cond_11
    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->isUnNamedModule()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 44
    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->defaultRootModules(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    goto :goto_6

    :cond_12
    move-object/from16 v1, v17

    :goto_6
    if-eqz v1, :cond_13

    .line 45
    invoke-direct {v6, v8, v0, v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->filterLimitedModules(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;Ljava/util/List;)Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    move-result-object v0

    .line 46
    :cond_13
    invoke-virtual {v14, v0}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->addAll(Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;)V

    goto/16 :goto_2

    :cond_14
    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    .line 47
    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/JavaModel;->isJmod(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 48
    new-instance v0, Lorg/eclipse/jdt/internal/core/JModPackageFragmentRoot;

    invoke-direct {v0, v8, v6}, Lorg/eclipse/jdt/internal/core/JModPackageFragmentRoot;-><init>(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/JavaProject;)V

    goto :goto_7

    .line 49
    :cond_15
    new-instance v0, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;

    invoke-direct {v0, v8, v6}, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;-><init>(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/JavaProject;)V

    goto :goto_7

    :cond_16
    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    .line 50
    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 51
    new-instance v0, Lorg/eclipse/jdt/internal/core/ExternalPackageFragmentRoot;

    invoke-direct {v0, v8, v6}, Lorg/eclipse/jdt/internal/core/ExternalPackageFragmentRoot;-><init>(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/JavaProject;)V

    :goto_7
    if-eqz v0, :cond_17

    .line 52
    invoke-virtual {v14, v0}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->add(Ljava/lang/Object;)V

    .line 53
    invoke-virtual {v13, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v12, :cond_17

    .line 54
    move-object v1, v7

    check-cast v1, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    move-object/from16 v2, p4

    check-cast v2, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->combineWith(Lorg/eclipse/jdt/internal/core/ClasspathEntry;)Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    move-result-object v1

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    return-void
.end method

.method public computePackageFragmentRoots([Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;Ljava/util/HashSet;Lorg/eclipse/jdt/core/IClasspathEntry;ZZLjava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    .line 61
    invoke-virtual/range {v0 .. v8}, Lorg/eclipse/jdt/internal/core/JavaProject;->computePackageFragmentRoots([Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;Ljava/util/HashSet;Lorg/eclipse/jdt/core/IClasspathEntry;ZZLjava/util/Map;Z)V

    return-void
.end method

.method public computePackageFragmentRoots([Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;Ljava/util/HashSet;Lorg/eclipse/jdt/core/IClasspathEntry;ZZLjava/util/Map;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    move-object v0, p1

    if-nez p4, :cond_0

    .line 62
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->rootID()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v10, p3

    invoke-virtual {v10, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v10, p3

    .line 63
    :goto_0
    array-length v11, v0

    const/4 v1, 0x0

    move v12, v1

    :goto_1
    if-lt v12, v11, :cond_1

    return-void

    .line 64
    :cond_1
    aget-object v2, v0, v12

    move-object v1, p0

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    .line 65
    invoke-virtual/range {v1 .. v9}, Lorg/eclipse/jdt/internal/core/JavaProject;->computePackageFragmentRoots(Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;Ljava/util/HashSet;Lorg/eclipse/jdt/core/IClasspathEntry;ZZLjava/util/Map;Z)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1
.end method

.method public computePackageFragmentRoots(Lorg/eclipse/jdt/core/IClasspathEntry;)[Lorg/eclipse/jdt/core/IPackageFragmentRoot;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-array v2, v0, [Lorg/eclipse/jdt/core/IClasspathEntry;

    aput-object p1, v2, v1

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, v2, v1, v0, p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->computePackageFragmentRoots([Lorg/eclipse/jdt/core/IClasspathEntry;ZZLjava/util/Map;)[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 3
    :catch_0
    new-array p1, v1, [Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    return-object p1
.end method

.method public computePackageFragmentRoots([Lorg/eclipse/jdt/core/IClasspathEntry;ZZLjava/util/Map;)[Lorg/eclipse/jdt/core/IPackageFragmentRoot;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 55
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/JavaProject;->computePackageFragmentRoots([Lorg/eclipse/jdt/core/IClasspathEntry;ZZLjava/util/Map;Z)[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p1

    return-object p1
.end method

.method public computePackageFragmentRoots([Lorg/eclipse/jdt/core/IClasspathEntry;ZZLjava/util/Map;Z)[Lorg/eclipse/jdt/core/IPackageFragmentRoot;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 56
    new-instance v9, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    invoke-direct {v9}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;-><init>()V

    .line 57
    new-instance v3, Ljava/util/HashSet;

    const/4 v0, 0x5

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(I)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v9

    move v5, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    .line 58
    invoke-virtual/range {v0 .. v8}, Lorg/eclipse/jdt/internal/core/JavaProject;->computePackageFragmentRoots([Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;Ljava/util/HashSet;Lorg/eclipse/jdt/core/IClasspathEntry;ZZLjava/util/Map;Z)V

    .line 59
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size()I

    move-result p1

    new-array p1, p1, [Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    .line 60
    invoke-virtual {v9, p1}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->copyInto([Ljava/lang/Object;)V

    return-object p1
.end method

.method public computeSharedPropertyFileName(Lorg/eclipse/core/runtime/QualifiedName;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/eclipse/core/runtime/QualifiedName;->getLocalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public configure()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    const-string v0, "org.eclipse.jdt.core.javabuilder"

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->addToBuildSpec(Ljava/lang/String;)V

    return-void
.end method

.method public contains(Lorg/eclipse/core/resources/IResource;)Z
    .locals 12

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v5

    :goto_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getExternalManager()Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;

    move-result-object v4

    array-length v6, v1

    move v7, v0

    :goto_1
    const/4 v8, 0x1

    if-lt v7, v6, :cond_7

    if-eqz v5, :cond_5

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v1

    if-le v1, v8, :cond_1

    invoke-interface {v5}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v1

    if-ne v1, v8, :cond_1

    return v0

    :cond_1
    instance-of p1, p1, Lorg/eclipse/core/resources/IFolder;

    if-eqz p1, :cond_2

    return v8

    :cond_2
    invoke-interface {v5}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result p1

    if-eq p1, v8, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v3}, Lorg/eclipse/core/runtime/IPath;->lastSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isClassFileName(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v8

    return p1

    :cond_4
    invoke-interface {v3}, Lorg/eclipse/core/runtime/IPath;->lastSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->isJavaLikeFileName(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v8

    return p1

    :cond_5
    :goto_2
    if-eqz v2, :cond_6

    return v0

    :cond_6
    return v8

    :cond_7
    aget-object v9, v1, v7

    invoke-interface {v9}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v10

    invoke-interface {v9}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v11

    if-ne v11, v8, :cond_8

    invoke-virtual {v4, v10}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->getFolder(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFolder;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-interface {v8}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v10

    :cond_8
    if-eqz v5, :cond_9

    invoke-interface {v5}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v8

    invoke-interface {v8, v10}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v8

    if-eqz v8, :cond_a

    :cond_9
    invoke-interface {v10, v3}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v8

    if-eqz v8, :cond_a

    move-object v5, v9

    :cond_a
    aget-object v8, v1, v7

    invoke-interface {v8}, Lorg/eclipse/jdt/core/IClasspathEntry;->getOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v8

    if-eqz v8, :cond_b

    invoke-interface {v8, v3}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v9

    if-eqz v9, :cond_b

    move-object v2, v8

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catch_0
    return v0
.end method

.method public createClasspathProblemMarker(Lorg/eclipse/jdt/core/IJavaModelStatus;)V
    .locals 18

    move-object/from16 v1, p0

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IJavaModelStatus;->getCode()I

    move-result v2

    const/16 v3, 0x3e8

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v2, v3, :cond_c

    const/16 v3, 0x3e9

    const-string v7, "error"

    if-eq v2, v3, :cond_a

    const/16 v3, 0x3ec

    const-string v8, "warning"

    if-eq v2, v3, :cond_7

    const/16 v3, 0x3f5

    if-eq v2, v3, :cond_4

    const/16 v3, 0x3f9

    if-eq v2, v3, :cond_2

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IJavaModelStatus;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    if-eqz v2, :cond_0

    new-array v0, v5, [Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    :cond_0
    const-string v2, "org.eclipse.jdt.core.incompleteClasspath"

    invoke-virtual {v1, v2, v5}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IJavaModelStatus;->getSeverity()I

    move-result v2

    if-eq v2, v4, :cond_1

    :goto_0
    move v2, v6

    :goto_1
    move v5, v2

    goto :goto_5

    :cond_1
    :goto_2
    move v4, v5

    goto :goto_0

    :cond_2
    const-string v2, "org.eclipse.jdt.core.classpath.mainOnlyProjectHasTestOnlyDependency"

    invoke-virtual {v1, v2, v5}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    const-string v2, "org.eclipse.jdt.core.classpath.outputOverlappingAnotherSource"

    invoke-virtual {v1, v2, v5}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v2, v5

    :goto_3
    move v5, v6

    goto :goto_5

    :cond_5
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v5

    move v4, v2

    goto :goto_3

    :cond_6
    return-void

    :cond_7
    const-string v2, "org.eclipse.jdt.core.incompatibleJDKLevel"

    invoke-virtual {v1, v2, v5}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_2

    :cond_9
    return-void

    :cond_a
    const-string v2, "org.eclipse.jdt.core.circularClasspath"

    invoke-virtual {v1, v2, v5}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :goto_4
    move v2, v6

    goto :goto_5

    :cond_b
    move v4, v5

    goto :goto_4

    :cond_c
    move v2, v6

    move v6, v5

    goto :goto_1

    :goto_5
    :try_start_0
    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/JavaProject;->project:Lorg/eclipse/core/resources/IProject;

    const-string v7, "org.eclipse.jdt.core.buildpath_problem"

    invoke-interface {v3, v7}, Lorg/eclipse/core/resources/IProject;->createMarker(Ljava/lang/String;)Lorg/eclipse/core/resources/IMarker;

    move-result-object v3

    const-string v7, "message"

    const-string v8, "severity"

    const-string v9, "location"

    const-string v10, "cycleDetected"

    const-string v11, "classpathFileFormat"

    const-string v12, "outputOverlappingSource"

    const-string v13, "id"

    const-string v14, "arguments"

    const-string v15, "categoryId"

    const-string v16, "sourceId"

    filled-new-array/range {v7 .. v16}, [Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IJavaModelStatus;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_buildPath:Ljava/lang/String;
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "false"

    const-string v11, "true"

    if-eqz v5, :cond_d

    move-object v5, v11

    goto :goto_6

    :cond_d
    move-object v5, v4

    :goto_6
    if-eqz v6, :cond_e

    move-object v12, v11

    goto :goto_7

    :cond_e
    move-object v12, v4

    :goto_7
    if-eqz v2, :cond_f

    move-object v13, v11

    goto :goto_8

    :cond_f
    move-object v13, v4

    :goto_8
    :try_start_1
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IJavaModelStatus;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getProblemArgumentsForMarker([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const-string v17, "JDT"

    move-object v11, v5

    filled-new-array/range {v8 .. v17}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v7, v0}, Lorg/eclipse/core/resources/IMarker;->setAttributes([Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    sget-boolean v2, Lorg/eclipse/jdt/internal/core/JavaModelManager;->VERBOSE:Z

    if-eqz v2, :cond_10

    invoke-virtual {v0}, Lorg/eclipse/core/runtime/CoreException;->printStackTrace()V

    :cond_10
    :goto_9
    return-void
.end method

.method public createElementInfo()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo;-><init>()V

    return-object v0
.end method

.method public decodeClasspath(Ljava/lang/String;Ljava/util/Map;)[[Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/jdt/internal/core/ClasspathEntry$AssertionFailedException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p1

    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/StringReader;->close()V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "classpath"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "classpathentry"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    :goto_0
    const/4 v6, 0x1

    if-lt v5, v2, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    new-array v7, v2, [[Lorg/eclipse/jdt/core/IClasspathEntry;

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    move v2, v6

    :goto_1
    add-int/2addr v2, v1

    new-array v2, v2, [Lorg/eclipse/jdt/core/IClasspathEntry;

    aput-object v2, v7, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    if-eqz v4, :cond_1

    aget-object v2, v7, v3

    aput-object v4, v2, v1

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v1, "referencedentry"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    :goto_2
    if-lt v3, v9, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lorg/eclipse/jdt/core/IClasspathEntry;

    aput-object p1, v7, v6

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v7

    :cond_2
    invoke-interface {v8, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-ne v1, v6, :cond_3

    check-cast p1, Lorg/w3c/dom/Element;

    invoke-static {p1, p0, p2}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->elementDecode(Lorg/w3c/dom/Element;Lorg/eclipse/jdt/core/IJavaProject;Ljava/util/Map;)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    if-ne v8, v6, :cond_6

    check-cast v7, Lorg/w3c/dom/Element;

    invoke-static {v7, p0, p2}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->elementDecode(Lorg/w3c/dom/Element;Lorg/eclipse/jdt/core/IJavaProject;Ljava/util/Map;)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-interface {v6}, Lorg/eclipse/jdt/core/IClasspathEntry;->getContentKind()I

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_5

    move-object v4, v6

    goto :goto_3

    :cond_5
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    new-instance p1, Ljava/io/IOException;

    sget-object p2, Lorg/eclipse/jdt/internal/core/util/Messages;->file_badFormat:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_5

    :goto_4
    :try_start_1
    new-instance p2, Ljava/io/IOException;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->file_badFormat:Ljava/lang/String;

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_5
    new-instance p2, Ljava/io/IOException;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->file_badFormat:Ljava/lang/String;

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_6
    invoke-virtual {v1}, Ljava/io/StringReader;->close()V

    throw p1
.end method

.method public decodeClasspathEntry(Ljava/lang/String;)Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p1

    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/StringReader;->close()V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "classpathentry"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, p0, v0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->elementDecode(Lorg/w3c/dom/Element;Lorg/eclipse/jdt/core/IJavaProject;Ljava/util/Map;)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v0

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Ljava/io/StringReader;->close()V

    throw p1

    :catch_0
    invoke-virtual {v1}, Ljava/io/StringReader;->close()V

    return-object v0

    :catch_1
    invoke-virtual {v1}, Ljava/io/StringReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-object v0
.end method

.method public deconfigure()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    const-string v0, "org.eclipse.jdt.core.javabuilder"

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->removeFromBuildSpec(Ljava/lang/String;)V

    return-void
.end method

.method public defaultClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaProject;->project:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/core/JavaCore;->newSourceEntry(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/eclipse/jdt/core/IClasspathEntry;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method public defaultOutputLocation()Lorg/eclipse/core/runtime/IPath;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaProject;->project:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    const-string v1, "bin"

    invoke-interface {v0, v1}, Lorg/eclipse/core/runtime/IPath;->append(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    return-object v0
.end method

.method public determineModulesOfProjectsWithNonEmptyClasspath()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getExpandedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/core/ModuleUpdater;->determineModulesOfProjectsWithNonEmptyClasspath(Lorg/eclipse/jdt/internal/core/JavaProject;[Lorg/eclipse/jdt/core/IClasspathEntry;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public encodeClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;[Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;ZLjava/util/Map;)Ljava/lang/String;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v11, p4

    const-string v12, "classpath"

    const-string v13, "UTF8"

    :try_start_0
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v15, Ljava/io/OutputStreamWriter;

    invoke-direct {v15, v14, v13}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    new-instance v10, Lorg/eclipse/jdt/internal/core/XMLWriter;

    const/4 v9, 0x1

    invoke-direct {v10, v15, v1, v9}, Lorg/eclipse/jdt/internal/core/XMLWriter;-><init>(Ljava/io/Writer;Lorg/eclipse/jdt/core/IJavaProject;Z)V

    invoke-virtual {v10, v12, v11}, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;->startTag(Ljava/lang/String;Z)V

    const/16 v16, 0x0

    move/from16 v8, v16

    :goto_0
    array-length v4, v0

    if-lt v8, v4, :cond_3

    if-eqz v3, :cond_0

    invoke-interface {v3, v9}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v3, "kind"

    const/16 v4, 0xa

    invoke-static {v4}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->kindToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "path"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "classpathentry"

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v3, v10

    move/from16 v6, p4

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;->printTag(Ljava/lang/String;Ljava/util/HashMap;ZZZ)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    move/from16 v0, v16

    :goto_2
    array-length v3, v2

    if-lt v0, v3, :cond_2

    :cond_1
    move v2, v9

    goto :goto_3

    :cond_2
    aget-object v3, v2, v0

    check-cast v3, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    iget-object v4, v1, Lorg/eclipse/jdt/internal/core/JavaProject;->project:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v4}, Lorg/eclipse/core/resources/IProject;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v5

    const/4 v7, 0x1

    const/16 v16, 0x1

    move-object v4, v10

    move/from16 v6, p4

    move-object/from16 v8, p5

    move v2, v9

    move/from16 v9, v16

    invoke-virtual/range {v3 .. v9}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->elementEncode(Lorg/eclipse/jdt/internal/core/XMLWriter;Lorg/eclipse/core/runtime/IPath;ZZLjava/util/Map;Z)V

    add-int/lit8 v0, v0, 0x1

    move v9, v2

    move-object/from16 v2, p2

    goto :goto_2

    :goto_3
    invoke-virtual {v10, v12, v11, v2}, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;->endTag(Ljava/lang/String;ZZ)V

    invoke-virtual {v15}, Ljava/io/OutputStreamWriter;->flush()V

    invoke-virtual {v15}, Ljava/io/OutputStreamWriter;->close()V

    invoke-virtual {v14, v13}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    move v2, v9

    aget-object v4, v0, v8

    check-cast v4, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    iget-object v5, v1, Lorg/eclipse/jdt/internal/core/JavaProject;->project:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v5}, Lorg/eclipse/core/resources/IProject;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v6

    const/4 v9, 0x1

    const/16 v17, 0x0

    move-object v5, v10

    move/from16 v7, p4

    move/from16 v18, v8

    move v8, v9

    move-object/from16 v9, p5

    move-object/from16 v19, v10

    move/from16 v10, v17

    invoke-virtual/range {v4 .. v10}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->elementEncode(Lorg/eclipse/jdt/internal/core/XMLWriter;Lorg/eclipse/core/runtime/IPath;ZZLjava/util/Map;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v8, v18, 0x1

    move v9, v2

    move-object/from16 v10, v19

    move-object/from16 v2, p2

    goto/16 :goto_0

    :goto_4
    new-instance v2, Lorg/eclipse/jdt/core/JavaModelException;

    const/16 v3, 0x3d9

    invoke-direct {v2, v0, v3}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public encodeClasspathEntry(Lorg/eclipse/jdt/core/IClasspathEntry;)Ljava/lang/String;
    .locals 10

    const-string v0, "UTF8"

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    new-instance v4, Lorg/eclipse/jdt/internal/core/XMLWriter;

    const/4 v3, 0x0

    invoke-direct {v4, v2, p0, v3}, Lorg/eclipse/jdt/internal/core/XMLWriter;-><init>(Ljava/io/Writer;Lorg/eclipse/jdt/core/IJavaProject;Z)V

    move-object v5, p1

    check-cast v5, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/JavaProject;->project:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v6}, Lorg/eclipse/core/resources/IProject;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v6

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getReferencingEntry()Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    move v9, p1

    goto :goto_0

    :cond_0
    move v9, v3

    :goto_0
    const/4 p1, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, v5

    move-object v5, v6

    move v6, p1

    invoke-virtual/range {v3 .. v9}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->elementEncode(Lorg/eclipse/jdt/internal/core/XMLWriter;Lorg/eclipse/core/runtime/IPath;ZZLjava/util/Map;Z)V

    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/JavaProject;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaProject;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaProject;->project:Lorg/eclipse/core/resources/IProject;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public findElement(Ljava/lang/String;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 22
    new-instance v0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;

    invoke-direct {v0, p1, p0, p2}, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;-><init>(Ljava/lang/String;Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V

    .line 23
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parse()V

    .line 24
    iget-object p1, v0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->exception:Lorg/eclipse/jdt/core/JavaModelException;

    if-nez p1, :cond_0

    .line 25
    iget-object p1, v0, Lorg/eclipse/jdt/internal/core/util/JavaElementFinder;->element:Lorg/eclipse/jdt/core/IJavaElement;

    return-object p1

    .line 26
    :cond_0
    throw p1
.end method

.method public findElement(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->findElement(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1
.end method

.method public findElement(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 2
    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->findPackageFragment(Ljava/lang/String;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    .line 6
    :cond_0
    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->lastSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/eclipse/jdt/internal/core/util/Util;->isJavaLikeFileName(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 7
    const-string v4, "class"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    const/4 v4, 0x1

    .line 8
    invoke-interface {p1, v4}, Lorg/eclipse/core/runtime/IPath;->removeLastSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v5

    .line 9
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->lastSegment()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v3, v1

    sub-int/2addr v3, v4

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    move-object v2, p1

    .line 14
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/JavaProject;->newNameLookup(Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/internal/core/NameLookup;

    move-result-object v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x1e

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 15
    invoke-virtual/range {v1 .. v8}, Lorg/eclipse/jdt/internal/core/NameLookup;->findType(Ljava/lang/String;ZIZZZLorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/core/NameLookup$Answer;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 16
    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/NameLookup$Answer;->type:Lorg/eclipse/jdt/core/IType;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_4
    return-object v0

    .line 17
    :goto_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/JavaModelException;->getStatus()Lorg/eclipse/core/runtime/IStatus;

    move-result-object p2

    invoke-interface {p2}, Lorg/eclipse/core/runtime/IStatus;->getCode()I

    move-result p2

    const/16 v1, 0x3c9

    if-ne p2, v1, :cond_5

    return-object v0

    .line 18
    :cond_5
    throw p1

    .line 19
    :cond_6
    new-instance p2, Lorg/eclipse/jdt/core/JavaModelException;

    .line 20
    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v1, 0x3d3

    invoke-direct {v0, v1, p1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/core/runtime/IPath;)V

    .line 21
    invoke-direct {p2, v0}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw p2
.end method

.method public findModule(Ljava/lang/String;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IModuleDescription;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/JavaProject;->newNameLookup(Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/internal/core/NameLookup;

    move-result-object p2

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/JavaProject;->findModule(Ljava/lang/String;Lorg/eclipse/jdt/internal/core/NameLookup;)Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object p1

    return-object p1
.end method

.method public findModule(Ljava/lang/String;Lorg/eclipse/jdt/internal/core/NameLookup;)Lorg/eclipse/jdt/core/IModuleDescription;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/core/NameLookup;->findModule([C)Lorg/eclipse/jdt/internal/core/NameLookup$Answer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/NameLookup$Answer;->module:Lorg/eclipse/jdt/core/IModuleDescription;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findPackageFragment(Ljava/lang/String;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->newNameLookup(Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/internal/core/NameLookup;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v1, p1, v2}, Lorg/eclipse/jdt/internal/core/NameLookup;->findPackageFragments(Ljava/lang/String;Z)[Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    .line 3
    :cond_0
    array-length v0, p1

    move v1, v2

    :goto_0
    if-lt v1, v0, :cond_1

    .line 4
    aget-object p1, p1, v2

    return-object p1

    .line 5
    :cond_1
    aget-object v3, p1, v1

    .line 6
    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/core/JavaProject;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public findPackageFragment(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IPackageFragment;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 7
    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->canonicalizedPath(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->findPackageFragment0(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object p1

    return-object p1
.end method

.method public findPackageFragmentRoot(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->canonicalizedPath(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->findPackageFragmentRoot0(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p1

    return-object p1
.end method

.method public findPackageFragmentRoot0(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getAllPackageFragmentRoots()[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    aget-object v2, v0, v1

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->path_mustBeAbsolute:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public findPackageFragmentRoots(Lorg/eclipse/jdt/core/IClasspathEntry;)[Lorg/eclipse/jdt/core/IPackageFragmentRoot;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getRawClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v2

    array-length v3, v2

    move v4, v0

    :goto_0
    if-lt v4, v3, :cond_0

    goto :goto_1

    :cond_0
    aget-object v5, v2, v4

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-array v2, v1, [Lorg/eclipse/jdt/core/IClasspathEntry;

    aput-object p1, v2, v0

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/JavaProject;->resolveClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;)[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/eclipse/jdt/internal/core/JavaProject;->computePackageFragmentRoots([Lorg/eclipse/jdt/core/IClasspathEntry;ZZLjava/util/Map;)[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    add-int/2addr v4, v1

    goto :goto_0

    :catch_0
    :goto_1
    new-array p1, v0, [Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    return-object p1
.end method

.method public findType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->findType(Ljava/lang/String;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    return-object p1
.end method

.method public findType(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 9
    sget-object v0, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->findType(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    return-object p1
.end method

.method public findType(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/IType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 10
    sget-object v0, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/eclipse/jdt/internal/core/JavaProject;->findType(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    return-object p1
.end method

.method public findType(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IType;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/core/JavaProject;->newNameLookup(Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/internal/core/NameLookup;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 14
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/JavaProject;->findType(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/jdt/internal/core/NameLookup;ZLorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    return-object p1
.end method

.method public findType(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/IType;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/core/JavaProject;->newNameLookup(Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/internal/core/NameLookup;

    move-result-object v3

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    .line 16
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/JavaProject;->findType(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/jdt/internal/core/NameLookup;ZLorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    return-object p1
.end method

.method public findType(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/jdt/internal/core/NameLookup;ZLorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/IType;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x1e

    move-object v0, p3

    move-object v1, p2

    move-object v2, p1

    move v5, p4

    move-object v8, p5

    .line 11
    invoke-virtual/range {v0 .. v8}, Lorg/eclipse/jdt/internal/core/NameLookup;->findType(Ljava/lang/String;Ljava/lang/String;ZIZZZLorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/core/NameLookup$Answer;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/NameLookup$Answer;->type:Lorg/eclipse/jdt/core/IType;

    :goto_0
    return-object p1
.end method

.method public findType(Ljava/lang/String;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/IType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    invoke-virtual {p0, p1, v0, p2}, Lorg/eclipse/jdt/internal/core/JavaProject;->findType(Ljava/lang/String;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    return-object p1
.end method

.method public findType(Ljava/lang/String;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/JavaProject;->newNameLookup(Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/internal/core/NameLookup;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->findType(Ljava/lang/String;Lorg/eclipse/jdt/internal/core/NameLookup;ZLorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    return-object p1
.end method

.method public findType(Ljava/lang/String;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/IType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 19
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/JavaProject;->newNameLookup(Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/internal/core/NameLookup;

    move-result-object p2

    const/4 v0, 0x1

    .line 20
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/eclipse/jdt/internal/core/JavaProject;->findType(Ljava/lang/String;Lorg/eclipse/jdt/internal/core/NameLookup;ZLorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    return-object p1
.end method

.method public findType(Ljava/lang/String;Lorg/eclipse/jdt/internal/core/NameLookup;ZLorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/IType;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x1e

    move-object v0, p2

    move-object v1, p1

    move v4, p3

    move-object v7, p4

    .line 3
    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/NameLookup;->findType(Ljava/lang/String;ZIZZZLorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/core/NameLookup$Answer;

    move-result-object v0

    if-nez v0, :cond_2

    const/16 v0, 0x2e

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/JavaProject;->findType(Ljava/lang/String;Lorg/eclipse/jdt/internal/core/NameLookup;ZLorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/IType;

    move-result-object p2

    if-eqz p2, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/eclipse/jdt/core/IType;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object p2

    .line 7
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    return-object v2

    :cond_1
    return-object p2

    .line 8
    :cond_2
    iget-object p1, v0, Lorg/eclipse/jdt/internal/core/NameLookup$Answer;->type:Lorg/eclipse/jdt/core/IType;

    return-object p1
.end method

.method public findUnfilteredPackageFragmentRoots(Lorg/eclipse/jdt/core/IClasspathEntry;)[Lorg/eclipse/jdt/core/IPackageFragmentRoot;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Lorg/eclipse/jdt/core/IClasspathEntry;

    aput-object p1, v1, v0

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->resolveClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;)[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v0, v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->computePackageFragmentRoots([Lorg/eclipse/jdt/core/IClasspathEntry;ZZLjava/util/Map;)[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-array p1, v0, [Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    return-object p1
.end method

.method public flushClasspathProblemMarkers(ZZZ)V
    .locals 10

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaProject;->project:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaProject;->project:Lorg/eclipse/core/resources/IProject;

    const-string v1, "org.eclipse.jdt.core.buildpath_problem"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lorg/eclipse/core/resources/IProject;->findMarkers(Ljava/lang/String;ZI)[Lorg/eclipse/core/resources/IMarker;

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_0

    goto/16 :goto_6

    :cond_0
    aget-object v4, v0, v3

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    invoke-interface {v4}, Lorg/eclipse/core/resources/IMarker;->delete()V

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_5

    :cond_1
    const-string v5, "cycleDetected"

    invoke-interface {v4, v5}, Lorg/eclipse/core/resources/IMarker;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "classpathFileFormat"

    invoke-interface {v4, v6}, Lorg/eclipse/core/resources/IMarker;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "outputOverlappingSource"

    invoke-interface {v4, v7}, Lorg/eclipse/core/resources/IMarker;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "true"

    const/4 v9, 0x1

    if-eqz v5, :cond_2

    :try_start_1
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v9

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_1
    if-ne p1, v5, :cond_5

    if-eqz v7, :cond_3

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v9

    goto :goto_2

    :cond_3
    move v5, v2

    :goto_2
    if-ne p3, v5, :cond_5

    if-eqz v6, :cond_4

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    move v9, v2

    :goto_3
    if-ne p2, v9, :cond_5

    invoke-interface {v4}, Lorg/eclipse/core/resources/IMarker;->delete()V
    :try_end_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :goto_5
    sget-boolean p2, Lorg/eclipse/jdt/internal/core/JavaModelManager;->VERBOSE:Z

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lorg/eclipse/core/runtime/CoreException;->printStackTrace()V

    :cond_6
    :goto_6
    return-void
.end method

.method public getAccessRestrictions(Ljava/lang/String;)[Lorg/eclipse/core/runtime/IPath;
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x7c

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object p1

    array-length v1, p1

    if-lez v1, :cond_2

    new-array v1, v1, [Lorg/eclipse/core/runtime/IPath;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    new-instance v2, Lorg/eclipse/core/runtime/Path;

    new-instance v3, Ljava/lang/String;

    aget-object v4, p1, v0

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v2, v3}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public getAllPackageFragmentRoots()[Lorg/eclipse/jdt/core/IPackageFragmentRoot;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getAllPackageFragmentRoots(Ljava/util/Map;Z)[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v0

    return-object v0
.end method

.method public getAllPackageFragmentRoots(Ljava/util/Map;)[Lorg/eclipse/jdt/core/IPackageFragmentRoot;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getAllPackageFragmentRoots(Ljava/util/Map;Z)[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p1

    return-object p1
.end method

.method public getAllPackageFragmentRoots(Ljava/util/Map;Z)[Lorg/eclipse/jdt/core/IPackageFragmentRoot;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/JavaProject;->computePackageFragmentRoots([Lorg/eclipse/jdt/core/IClasspathEntry;ZZLjava/util/Map;Z)[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p1

    return-object p1
.end method

.method public getAutomaticModuleDescription()Lorg/eclipse/jdt/core/IModuleDescription;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/env/AutomaticModuleNaming;->determineAutomaticModuleNameFromManifest(Ljava/util/jar/Manifest;)[C

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getElementName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/env/AutomaticModuleNaming;->determineAutomaticModuleNameFromFileName(Ljava/lang/String;ZZ)[C

    move-result-object v0

    move v1, v2

    :cond_0
    new-instance v2, Lorg/eclipse/jdt/internal/core/AbstractModule$AutoModule;

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v0, v1}, Lorg/eclipse/jdt/internal/core/AbstractModule$AutoModule;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Z)V

    return-object v2
.end method

.method public getClasspathEntryFor(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPerProjectInfo()Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->rootPathToResolvedEntries:Ljava/util/Map;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/IClasspathEntry;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/resources/IProject;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/eclipse/core/runtime/IPath;->append(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/core/IClasspathEntry;

    :cond_2
    return-object v1
.end method

.method public getCycleMarker()Lorg/eclipse/core/resources/IMarker;
    .locals 6

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaProject;->project:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaProject;->project:Lorg/eclipse/core/resources/IProject;

    const-string v1, "org.eclipse.jdt.core.buildpath_problem"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lorg/eclipse/core/resources/IProject;->findMarkers(Ljava/lang/String;ZI)[Lorg/eclipse/core/resources/IMarker;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_1

    :cond_0
    aget-object v3, v0, v2

    const-string v4, "cycleDetected"

    invoke-interface {v3, v4}, Lorg/eclipse/core/resources/IMarker;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEclipsePreferences()Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaProject;->project:Lorg/eclipse/core/resources/IProject;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->hasJavaNature(Lorg/eclipse/core/resources/IProject;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaProject;->project:Lorg/eclipse/core/resources/IProject;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getPerProjectInfo(Lorg/eclipse/core/resources/IProject;Z)Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    move-result-object v0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->preferences:Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Lorg/eclipse/core/resources/ProjectScope;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/eclipse/core/resources/ProjectScope;-><init>(Lorg/eclipse/core/resources/IProject;)V

    const-string v2, "org.eclipse.jdt.core"

    invoke-interface {v1, v2}, Lorg/eclipse/core/runtime/preferences/IScopeContext;->getNode(Ljava/lang/String;)Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->updatePreferences(Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;)V

    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->preferences:Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    invoke-interface {v1}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->parent()Lorg/osgi/service/prefs/Preferences;

    move-result-object v0

    check-cast v0, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaProject;->preferencesNodeListener:Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$INodeChangeListener;

    if-eqz v2, :cond_2

    invoke-interface {v0, v2}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->removeNodeChangeListener(Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$INodeChangeListener;)V

    :cond_2
    new-instance v2, Lorg/eclipse/jdt/internal/core/JavaProject$2;

    invoke-direct {v2, p0, v1}, Lorg/eclipse/jdt/internal/core/JavaProject$2;-><init>(Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;)V

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaProject;->preferencesNodeListener:Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$INodeChangeListener;

    invoke-interface {v0, v2}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->addNodeChangeListener(Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$INodeChangeListener;)V

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaProject;->preferencesChangeListener:Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$IPreferenceChangeListener;

    if-eqz v0, :cond_4

    invoke-interface {v1, v0}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->removePreferenceChangeListener(Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$IPreferenceChangeListener;)V

    :cond_4
    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaProject$3;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaProject$3;-><init>(Lorg/eclipse/jdt/internal/core/JavaProject;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaProject;->preferencesChangeListener:Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$IPreferenceChangeListener;

    invoke-interface {v1, v0}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->addPreferenceChangeListener(Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$IPreferenceChangeListener;)V

    return-object v1
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaProject;->project:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getElementType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getExpandedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getExpandedClasspath(Z)[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0

    return-object v0
.end method

.method public getExpandedClasspath(Z)[Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->rootID()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 5
    invoke-direct {p0, v2, v1, v0, p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->computeExpandedClasspath(Lorg/eclipse/jdt/internal/core/ClasspathEntry;Ljava/util/HashMap;Ljava/util/ArrayList;Z)V

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lorg/eclipse/jdt/core/IClasspathEntry;

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p1
.end method

.method public getFolderPackageFragmentRoot(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;
    .locals 2

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaProject;->project:Lorg/eclipse/core/resources/IProject;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPackageFragmentRoot(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaProject;->project:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getFolder(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFolder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPackageFragmentRoot(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p1

    return-object p1
.end method

.method public getHandleFromMemento(Ljava/lang/String;Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x2f

    const/4 v2, 0x0

    if-eq p1, v1, :cond_0

    return-object v2

    :cond_0
    const-string p1, ""

    :goto_0
    move-object v1, v2

    :cond_1
    :goto_1
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->PACKAGEFRAGMENT:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    sget-object v3, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->COUNT:Ljava/lang/String;

    if-ne v2, v3, :cond_3

    goto :goto_2

    :cond_3
    sget-object v3, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->MODULE:Ljava/lang/String;

    if-ne v2, v3, :cond_4

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    :goto_2
    if-nez v1, :cond_6

    new-instance v1, Lorg/eclipse/core/runtime/Path;

    invoke-direct {v1, p1}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPackageFragmentRoot(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaElement;

    goto :goto_3

    :cond_6
    new-instance v3, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;

    new-instance v4, Lorg/eclipse/core/runtime/Path;

    invoke-direct {v4, p1}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, v1, p0}, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;-><init>(Lorg/eclipse/core/runtime/IPath;Ljava/lang/String;Lorg/eclipse/jdt/internal/core/JavaProject;)V

    move-object p1, v3

    :goto_3
    if-eqz v2, :cond_7

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_7

    invoke-virtual {p1, v2, p2, p3}, Lorg/eclipse/jdt/internal/core/JavaElement;->getHandleFromMemento(Ljava/lang/String;Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/core/JavaElement;->getHandleFromMemento(Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1
.end method

.method public getHandleMementoDelimiter()C
    .locals 1

    const/16 v0, 0x3d

    return v0
.end method

.method public getJavaProjectElementInfo()Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo;

    return-object v0
.end method

.method public getManifest()Ljava/util/jar/Manifest;
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v0

    new-instance v1, Lorg/eclipse/core/runtime/Path;

    const-string v2, "META-INF/MANIFEST.MF"

    invoke-direct {v1, v2}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/eclipse/core/resources/IProject;->getFile(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFile;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IFile;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    :try_start_0
    invoke-interface {v0}, Lorg/eclipse/core/resources/IFile;->getContents()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/util/jar/Manifest;

    invoke-direct {v1, v0}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :cond_0
    :goto_0
    return-object v1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_2
    if-eqz v1, :cond_3

    if-eq v1, v0, :cond_2

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    move-object v0, v1

    :cond_3
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_4
    return-object v2
.end method

.method public getModuleDescription()Lorg/eclipse/jdt/core/IModuleDescription;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->getModule()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getRawClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPatchedModules(Lorg/eclipse/jdt/core/IClasspathEntry;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v6

    if-eq v6, v7, :cond_3

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    const/4 v7, 0x5

    if-eq v6, v7, :cond_3

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaModel()Lorg/eclipse/jdt/core/IJavaModel;

    move-result-object v6

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Lorg/eclipse/jdt/core/IJavaModel;->getJavaProject(Ljava/lang/String;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IJavaProject;->getModuleDescription()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    return-object v4

    :cond_3
    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/core/JavaProject;->findPackageFragmentRoots(Lorg/eclipse/jdt/core/IClasspathEntry;)[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v4

    array-length v6, v4

    move v7, v2

    :goto_1
    if-lt v7, v6, :cond_4

    goto :goto_2

    :cond_4
    aget-object v8, v4, v7

    invoke-interface {v8}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->getModuleDescription()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-interface {v8}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    return-object v8

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getNonJavaResources()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo;->getNonJavaResources(Lorg/eclipse/jdt/internal/core/JavaProject;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getOption(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getEclipsePreferences()Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getOption(Ljava/lang/String;ZLorg/eclipse/core/runtime/preferences/IEclipsePreferences;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOptions(Z)Ljava/util/Map;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getOptions()Ljava/util/Hashtable;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    :goto_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v1

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->optionNames:Ljava/util/HashSet;

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPerProjectInfo()Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    move-result-object v3

    iget-object v4, v3, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->options:Ljava/util/Hashtable;

    if-nez v4, :cond_6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getEclipsePreferences()Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    move-result-object v4

    if-nez v4, :cond_1

    return-object v0

    :cond_1
    invoke-interface {v4}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->keys()[Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/Hashtable;

    array-length v7, v5

    invoke-direct {v6, v7}, Ljava/util/Hashtable;-><init>(I)V

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    array-length v9, v5

    if-lt v8, v9, :cond_2

    iput-object v6, v3, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->options:Ljava/util/Hashtable;

    move-object v4, v6

    goto :goto_4

    :cond_2
    aget-object v9, v5, v8

    const/4 v10, 0x0

    invoke-interface {v4, v9, v10}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    iget-object v11, v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->deprecatedOptions:Ljava/util/Map;

    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    if-eqz v9, :cond_5

    array-length v11, v9

    move v12, v7

    :goto_2
    if-lt v12, v11, :cond_3

    goto :goto_3

    :cond_3
    aget-object v13, v9, v12

    invoke-virtual {v6, v13}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    invoke-virtual {v6, v13, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/osgi/service/prefs/BackingStoreException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :catch_0
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    goto :goto_4

    :catch_1
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    :cond_6
    :goto_4
    if-eqz p1, :cond_9

    invoke-virtual {v4}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->fixTaskTags(Ljava/util/Map;)V

    return-object v0

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_7

    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->knowsOption(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_9
    invoke-static {v4}, Lorg/eclipse/jdt/internal/core/util/Util;->fixTaskTags(Ljava/util/Map;)V

    return-object v4
.end method

.method public getOutputLocation()Lorg/eclipse/core/runtime/IPath;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPerProjectInfo()Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    move-result-object v0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->outputLocation:Lorg/eclipse/core/runtime/IPath;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getRawClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->outputLocation:Lorg/eclipse/core/runtime/IPath;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->defaultOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getPackageFragmentRoot(Ljava/lang/String;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;
    .locals 1

    .line 25
    new-instance v0, Lorg/eclipse/core/runtime/Path;

    invoke-direct {v0, p1}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->canonicalizedPath(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPackageFragmentRoot0(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p1

    return-object p1
.end method

.method public getPackageFragmentRoot(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPackageFragmentRoot(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p1

    return-object p1
.end method

.method public getPackageFragmentRoot(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;
    .locals 2

    .line 19
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p2, 0x4

    if-eq v0, p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 20
    :cond_0
    new-instance p2, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    invoke-direct {p2, p1, p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;-><init>(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/internal/core/JavaProject;)V

    return-object p2

    .line 21
    :cond_1
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->isInternalPathForExternalFolder(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22
    new-instance v0, Lorg/eclipse/jdt/internal/core/ExternalPackageFragmentRoot;

    invoke-direct {v0, p1, p2, p0}, Lorg/eclipse/jdt/internal/core/ExternalPackageFragmentRoot;-><init>(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/JavaProject;)V

    return-object v0

    .line 23
    :cond_2
    new-instance p2, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    invoke-direct {p2, p1, p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;-><init>(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/internal/core/JavaProject;)V

    return-object p2

    .line 24
    :cond_3
    new-instance p2, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;

    invoke-direct {p2, p1, p0}, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;-><init>(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/internal/core/JavaProject;)V

    return-object p2
.end method

.method public getPackageFragmentRoot(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;
    .locals 5

    .line 1
    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/core/runtime/IPath;->append(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    .line 3
    :cond_0
    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_1
    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->getDevice()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lorg/eclipse/jdt/internal/core/JavaModel;->getExternalTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaProject;->project:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v2}, Lorg/eclipse/core/resources/IProject;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v2

    .line 6
    invoke-interface {v2, p1}, Lorg/eclipse/core/resources/IWorkspaceRoot;->findMember(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IResource;

    move-result-object v3

    if-nez v3, :cond_7

    .line 7
    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->getFileExtension()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 8
    invoke-interface {p1, v4}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getProject(Ljava/lang/String;)Lorg/eclipse/core/resources/IProject;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPackageFragmentRoot0(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p1

    return-object p1

    .line 10
    :cond_3
    invoke-interface {v2, p1}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getFile(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFile;

    move-result-object v3

    goto :goto_0

    :cond_4
    if-ne v0, v1, :cond_6

    .line 11
    invoke-interface {p1, v4}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/JavaProject;->project:Lorg/eclipse/core/resources/IProject;

    goto :goto_0

    .line 14
    :cond_5
    invoke-interface {v2, p1}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getProject(Ljava/lang/String;)Lorg/eclipse/core/resources/IProject;

    move-result-object v3

    goto :goto_0

    .line 15
    :cond_6
    invoke-interface {v2, p1}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getFolder(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFolder;

    move-result-object v3

    .line 16
    :cond_7
    :goto_0
    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPackageFragmentRoot(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p1

    return-object p1

    .line 17
    :cond_8
    :goto_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPackageFragmentRoot0(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p1

    return-object p1
.end method

.method public getPackageFragmentRoot0(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;
    .locals 2

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getExternalManager()Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->getFolder(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFolder;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/eclipse/jdt/internal/core/ExternalPackageFragmentRoot;

    invoke-direct {v1, v0, p1, p0}, Lorg/eclipse/jdt/internal/core/ExternalPackageFragmentRoot;-><init>(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/JavaProject;)V

    return-object v1

    :cond_0
    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->isJrt(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaProject$JImageModuleFragmentBridge;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/JavaProject$JImageModuleFragmentBridge;-><init>(Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/core/runtime/IPath;)V

    return-object v0

    :cond_1
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/core/JavaModel;->getTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/io/File;

    if-eqz v1, :cond_2

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/JavaModel;->isFile(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast v0, Ljava/io/File;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/JavaModel;->isJmod(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/eclipse/jdt/internal/core/JModPackageFragmentRoot;

    invoke-direct {v0, p1, p0}, Lorg/eclipse/jdt/internal/core/JModPackageFragmentRoot;-><init>(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/JavaProject;)V

    return-object v0

    :cond_2
    new-instance v0, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;

    invoke-direct {v0, p1, p0}, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;-><init>(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/JavaProject;)V

    return-object v0
.end method

.method public getPackageFragmentRoots()[Lorg/eclipse/jdt/core/IPackageFragmentRoot;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    .line 2
    array-length v1, v0

    new-array v2, v1, [Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    const/4 v3, 0x0

    .line 3
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public getPackageFragmentRoots(Lorg/eclipse/jdt/core/IClasspathEntry;)[Lorg/eclipse/jdt/core/IPackageFragmentRoot;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->findPackageFragmentRoots(Lorg/eclipse/jdt/core/IClasspathEntry;)[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p1

    return-object p1
.end method

.method public getPackageFragments()[Lorg/eclipse/jdt/core/IPackageFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPackageFragmentRoots()[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPackageFragmentsInRoots([Lorg/eclipse/jdt/core/IPackageFragmentRoot;)[Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object v0

    return-object v0
.end method

.method public getPackageFragmentsInRoots([Lorg/eclipse/jdt/core/IPackageFragmentRoot;)[Lorg/eclipse/jdt/core/IPackageFragment;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-lt v2, v3, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lorg/eclipse/jdt/core/IPackageFragment;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p1

    :cond_0
    aget-object v3, p1, v2

    :try_start_0
    invoke-interface {v3}, Lorg/eclipse/jdt/core/IParent;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v3

    move v4, v1

    :goto_1
    array-length v5, v3

    if-lt v4, v5, :cond_1

    goto :goto_2

    :cond_1
    aget-object v5, v3, v4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getPatchedModules(Lorg/eclipse/jdt/core/IClasspathEntry;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/core/IClasspathEntry;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "patch-module"

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getExtraAttribute(Lorg/eclipse/jdt/core/IClasspathEntry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    const-string v2, "::"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v2, :cond_0

    return-object v0

    :cond_0
    aget-object v5, p1, v4

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_4

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v9, v3

    :goto_1
    if-lt v9, v8, :cond_1

    goto :goto_2

    :cond_1
    aget-object v10, v7, v9

    new-instance v11, Lorg/eclipse/core/runtime/Path;

    invoke-direct {v11, v10}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v11}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getPath()Lorg/eclipse/core/runtime/IPath;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaProject;->project:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    return-object v0
.end method

.method public getPerProjectInfo()Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaProject;->project:Lorg/eclipse/core/resources/IProject;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getPerProjectInfoCheckExistence(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    move-result-object v0

    return-object v0
.end method

.method public getProject()Lorg/eclipse/core/resources/IProject;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaProject;->project:Lorg/eclipse/core/resources/IProject;

    return-object v0
.end method

.method public getProjectCache()Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo$ProjectCache;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getProjectCache(Z)Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo$ProjectCache;

    move-result-object v0

    return-object v0
.end method

.method public getProjectCache(Z)Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo$ProjectCache;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo;

    invoke-virtual {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo;->getProjectCache(Lorg/eclipse/jdt/internal/core/JavaProject;Z)Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo$ProjectCache;

    move-result-object p1

    return-object p1
.end method

.method public getRawClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPerProjectInfo()Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    move-result-object v0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->rawClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->readAndCacheClasspath(Lorg/eclipse/jdt/internal/core/JavaProject;)[[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v1, Lorg/eclipse/jdt/internal/core/JavaProject;->INVALID_CLASSPATH:[Lorg/eclipse/jdt/core/IClasspathEntry;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->defaultClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getReferencedClasspathEntries()[Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPerProjectInfo()Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->referencedEntries:[Lorg/eclipse/jdt/core/IClasspathEntry;

    return-object v0
.end method

.method public getRequiredProjectNames()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->projectPrerequisites([Lorg/eclipse/jdt/core/IClasspathEntry;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPerProjectInfo()Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3
    invoke-virtual {p0, v0, v1, v2}, Lorg/eclipse/jdt/internal/core/JavaProject;->resolveClasspath(Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;ZZ)V

    .line 4
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->newTemporaryInfo()Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    move-result-object v0

    .line 6
    invoke-virtual {p0, v0, v1, v2}, Lorg/eclipse/jdt/internal/core/JavaProject;->resolveClasspath(Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;ZZ)V

    .line 7
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public getResolvedClasspath(Z)[Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 8
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->isClasspathBeingResolved(Lorg/eclipse/jdt/core/IJavaProject;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    sget-boolean p1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_ADVANCED:Z

    if-eqz p1, :cond_0

    .line 10
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->verbose_reentering_classpath_resolution()V

    .line 11
    :cond_0
    sget-object p1, Lorg/eclipse/jdt/internal/core/JavaProject;->RESOLUTION_IN_PROGRESS:[Lorg/eclipse/jdt/core/IClasspathEntry;

    return-object p1

    .line 12
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPerProjectInfo()Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    move-result-object v0

    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v1

    .line 15
    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->unresolvedEntryStatus:Lorg/eclipse/jdt/core/IJavaModelStatus;

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_2

    if-eqz v2, :cond_4

    .line 17
    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaModelStatus;->isOK()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 18
    invoke-virtual {p0, v0, v1, v2}, Lorg/eclipse/jdt/internal/core/JavaProject;->resolveClasspath(Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;ZZ)V

    .line 19
    monitor-enter v0

    .line 20
    :try_start_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v3

    .line 21
    iget-object v4, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->unresolvedEntryStatus:Lorg/eclipse/jdt/core/IJavaModelStatus;

    .line 22
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_3

    .line 23
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->newTemporaryInfo()Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    move-result-object v0

    .line 24
    invoke-virtual {p0, v0, v1, v2}, Lorg/eclipse/jdt/internal/core/JavaProject;->resolveClasspath(Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;ZZ)V

    .line 25
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v1

    .line 26
    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->unresolvedEntryStatus:Lorg/eclipse/jdt/core/IJavaModelStatus;

    goto :goto_0

    :cond_3
    move-object v1, v3

    move-object v2, v4

    :cond_4
    :goto_0
    if-nez p1, :cond_6

    if-eqz v2, :cond_6

    .line 27
    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaModelStatus;->isOK()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    .line 28
    :cond_5
    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {p1, v2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw p1

    :cond_6
    :goto_1
    return-object v1

    :catchall_0
    move-exception p1

    .line 29
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 30
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public getSharedProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaProject;->project:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v0, p1}, Lorg/eclipse/core/resources/IProject;->getFile(Ljava/lang/String;)Lorg/eclipse/core/resources/IFile;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/core/resources/IFile;->exists()Z

    move-result v0

    const-string v1, "Could not read .classpath with UTF-8 encoding"

    const-string v2, "UTF-8"

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->getResourceContentsAsByteArray(Lorg/eclipse/core/resources/IFile;)[B

    move-result-object p1

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/core/resources/IFile;->getLocationURI()Ljava/net/URI;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->toLocalFile(Ljava/net/URI;Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_1
    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getFileByteContent(Ljava/io/File;)[B

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    nop

    :catch_2
    :cond_1
    :goto_0
    return-object v0
.end method

.method public getSourceMapper()Lorg/eclipse/jdt/internal/core/SourceMapper;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUnderlyingResource()Lorg/eclipse/core/resources/IResource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaProject;->project:Lorg/eclipse/core/resources/IProject;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->newNotPresentException()Lorg/eclipse/jdt/core/JavaModelException;

    move-result-object v0

    throw v0
.end method

.method public hasBuildState()Z
    .locals 3

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaProject;->project:Lorg/eclipse/core/resources/IProject;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getLastBuiltState(Lorg/eclipse/core/resources/IProject;Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasClasspathCycle([Lorg/eclipse/jdt/core/IClasspathEntry;)Z
    .locals 8

    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    const/4 v7, 0x1

    invoke-direct {v5, v7}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v5, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    const/4 p1, 0x2

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, p1}, Ljava/util/HashSet;-><init>(I)V

    move-object v0, p0

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/JavaProject;->updateCycleParticipants(Ljava/util/ArrayList;Ljava/util/LinkedHashSet;Lorg/eclipse/core/resources/IWorkspaceRoot;Ljava/util/HashSet;Ljava/util/Map;)V

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v7

    return p1
.end method

.method public hasCycleMarker()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getCycleMarker()Lorg/eclipse/core/resources/IMarker;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasSource()Z
    .locals 7

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getRawClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v2, :cond_0

    return v3

    :cond_0
    aget-object v5, v1, v4

    invoke-interface {v5}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    return v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaProject;->project:Lorg/eclipse/core/resources/IProject;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isOnClasspath(Lorg/eclipse/core/resources/IResource;)Z
    .locals 8

    .line 13
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    .line 14
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    .line 15
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v2

    .line 16
    :goto_1
    array-length v5, v1

    if-lt v4, v5, :cond_1

    return v2

    .line 17
    :cond_1
    aget-object v5, v1, v4

    .line 18
    invoke-interface {v5}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v6

    .line 19
    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    return v3

    .line 20
    :cond_2
    invoke-interface {v6}, Lorg/eclipse/core/runtime/IPath;->isAbsolute()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 21
    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v7

    invoke-interface {v7}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v7

    invoke-interface {v7}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v7

    invoke-interface {v7, v0}, Lorg/eclipse/core/runtime/IPath;->append(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    return v3

    .line 22
    :cond_3
    invoke-interface {v6, v0}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 23
    check-cast v5, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->fullInclusionPatternChars()[[C

    move-result-object v6

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->fullExclusionPatternChars()[[C

    move-result-object v5

    invoke-static {v0, v6, v5, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/core/runtime/IPath;[[C[[CZ)Z

    move-result v5

    if-nez v5, :cond_4

    return v3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    return v2
.end method

.method public isOnClasspath(Lorg/eclipse/jdt/core/IJavaElement;)Z
    .locals 12

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getRawClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_b

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq v2, v5, :cond_4

    if-eq v2, v4, :cond_3

    const/4 v6, 0x4

    if-eq v2, v6, :cond_2

    const/4 v6, 0x5

    if-eq v2, v6, :cond_1

    .line 3
    invoke-interface {p1, v6}, Lorg/eclipse/jdt/core/IJavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    move v6, v0

    :goto_1
    move v7, v6

    goto :goto_2

    :cond_1
    move v6, v0

    move v7, v6

    move v2, v3

    goto :goto_2

    .line 4
    :cond_2
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->isArchive()Z

    move-result v2

    xor-int/2addr v2, v3

    move v7, v0

    move v6, v2

    move v2, v7

    goto :goto_2

    :cond_3
    move v2, v0

    move v6, v2

    move v7, v3

    goto :goto_2

    :cond_4
    move v2, v0

    move v6, v2

    goto :goto_1

    .line 5
    :goto_2
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    .line 6
    array-length v8, v1

    move v9, v0

    :goto_3
    if-lt v9, v8, :cond_8

    if-eqz v2, :cond_5

    return v0

    .line 7
    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v1
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_0

    move v2, v0

    .line 8
    :goto_4
    array-length v4, v1

    if-lt v2, v4, :cond_6

    return v0

    .line 9
    :cond_6
    aget-object v4, v1, v2

    invoke-direct {p0, p1, v6, v7, v4}, Lorg/eclipse/jdt/internal/core/JavaProject;->isOnClasspathEntry(Lorg/eclipse/core/runtime/IPath;ZZLorg/eclipse/jdt/core/IClasspathEntry;)Z

    move-result v4

    if-eqz v4, :cond_7

    return v3

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :catch_0
    return v0

    .line 10
    :cond_8
    aget-object v10, v1, v9

    .line 11
    invoke-interface {v10}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v11

    if-eq v11, v3, :cond_9

    if-eq v11, v5, :cond_9

    if-eq v11, v4, :cond_9

    goto :goto_5

    .line 12
    :cond_9
    invoke-direct {p0, p1, v6, v7, v10}, Lorg/eclipse/jdt/internal/core/JavaProject;->isOnClasspathEntry(Lorg/eclipse/core/runtime/IPath;ZZLorg/eclipse/jdt/core/IClasspathEntry;)Z

    move-result v10

    if-eqz v10, :cond_a

    return v3

    :cond_a
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :catch_1
    :cond_b
    return v0
.end method

.method public newEvaluationContext()Lorg/eclipse/jdt/core/eval/IEvaluationContext;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/eval/EvaluationContext;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1, p0}, Lorg/eclipse/jdt/internal/core/util/Util;->getLineSeparator(Ljava/lang/String;Lorg/eclipse/jdt/core/IJavaProject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->setLineSeparator(Ljava/lang/String;)V

    new-instance v1, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;

    invoke-direct {v1, v0, p0}, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;-><init>(Lorg/eclipse/jdt/internal/eval/EvaluationContext;Lorg/eclipse/jdt/internal/core/JavaProject;)V

    return-object v1
.end method

.method public newNameLookup(Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/internal/core/NameLookup;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->newNameLookup(Lorg/eclipse/jdt/core/WorkingCopyOwner;Z)Lorg/eclipse/jdt/internal/core/NameLookup;

    move-result-object p1

    return-object p1
.end method

.method public newNameLookup(Lorg/eclipse/jdt/core/WorkingCopyOwner;Z)Lorg/eclipse/jdt/internal/core/NameLookup;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 4
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object p2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getWorkingCopies(Lorg/eclipse/jdt/core/WorkingCopyOwner;Z)[Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p1

    .line 6
    :goto_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->newNameLookup([Lorg/eclipse/jdt/core/ICompilationUnit;)Lorg/eclipse/jdt/internal/core/NameLookup;

    move-result-object p1

    return-object p1
.end method

.method public newNameLookup([Lorg/eclipse/jdt/core/ICompilationUnit;)Lorg/eclipse/jdt/internal/core/NameLookup;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->newNameLookup([Lorg/eclipse/jdt/core/ICompilationUnit;Z)Lorg/eclipse/jdt/internal/core/NameLookup;

    move-result-object p1

    return-object p1
.end method

.method public newNameLookup([Lorg/eclipse/jdt/core/ICompilationUnit;Z)Lorg/eclipse/jdt/internal/core/NameLookup;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getJavaProjectElementInfo()Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo;->newNameLookup(Lorg/eclipse/jdt/internal/core/JavaProject;[Lorg/eclipse/jdt/core/ICompilationUnit;Z)Lorg/eclipse/jdt/internal/core/NameLookup;

    move-result-object p1

    return-object p1
.end method

.method public newSearchableNameEnvironment(Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/internal/core/SearchableEnvironment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->newSearchableNameEnvironment(Lorg/eclipse/jdt/core/WorkingCopyOwner;Z)Lorg/eclipse/jdt/internal/core/SearchableEnvironment;

    move-result-object p1

    return-object p1
.end method

.method public newSearchableNameEnvironment(Lorg/eclipse/jdt/core/WorkingCopyOwner;Z)Lorg/eclipse/jdt/internal/core/SearchableEnvironment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 4
    new-instance v0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;

    invoke-direct {v0, p0, p1, p2}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;-><init>(Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/jdt/core/WorkingCopyOwner;Z)V

    return-object v0
.end method

.method public newSearchableNameEnvironment([Lorg/eclipse/jdt/core/ICompilationUnit;)Lorg/eclipse/jdt/internal/core/SearchableEnvironment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->newSearchableNameEnvironment([Lorg/eclipse/jdt/core/ICompilationUnit;Z)Lorg/eclipse/jdt/internal/core/SearchableEnvironment;

    move-result-object p1

    return-object p1
.end method

.method public newSearchableNameEnvironment([Lorg/eclipse/jdt/core/ICompilationUnit;Z)Lorg/eclipse/jdt/internal/core/SearchableEnvironment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;

    invoke-direct {v0, p0, p1, p2}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;-><init>(Lorg/eclipse/jdt/internal/core/JavaProject;[Lorg/eclipse/jdt/core/ICompilationUnit;Z)V

    return-object v0
.end method

.method public newTemporaryInfo()Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaProject$4;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaProject;->project:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v1}, Lorg/eclipse/core/resources/IProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jdt/internal/core/JavaProject$4;-><init>(Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/core/resources/IProject;)V

    return-object v0
.end method

.method public newTypeHierarchy(Lorg/eclipse/jdt/core/IRegion;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ITypeHierarchy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    invoke-virtual {p0, p1, v0, p2}, Lorg/eclipse/jdt/internal/core/JavaProject;->newTypeHierarchy(Lorg/eclipse/jdt/core/IRegion;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ITypeHierarchy;

    move-result-object p1

    return-object p1
.end method

.method public newTypeHierarchy(Lorg/eclipse/jdt/core/IRegion;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ITypeHierarchy;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getWorkingCopies(Lorg/eclipse/jdt/core/WorkingCopyOwner;Z)[Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p2

    .line 3
    new-instance v0, Lorg/eclipse/jdt/internal/core/CreateTypeHierarchyOperation;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p2, v2, v1}, Lorg/eclipse/jdt/internal/core/CreateTypeHierarchyOperation;-><init>(Lorg/eclipse/jdt/core/IRegion;[Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/IType;Z)V

    .line 4
    invoke-virtual {v0, p3}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->runOperation(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    .line 5
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/CreateTypeHierarchyOperation;->getResult()Lorg/eclipse/jdt/core/ITypeHierarchy;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/eclipse/jdt/internal/core/util/Messages;->hierarchy_nullRegion:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newTypeHierarchy(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/core/IRegion;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ITypeHierarchy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 7
    sget-object v0, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/eclipse/jdt/internal/core/JavaProject;->newTypeHierarchy(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/core/IRegion;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ITypeHierarchy;

    move-result-object p1

    return-object p1
.end method

.method public newTypeHierarchy(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/core/IRegion;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ITypeHierarchy;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 8
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getWorkingCopies(Lorg/eclipse/jdt/core/WorkingCopyOwner;Z)[Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p3

    .line 9
    new-instance v0, Lorg/eclipse/jdt/internal/core/CreateTypeHierarchyOperation;

    invoke-direct {v0, p2, p3, p1, v1}, Lorg/eclipse/jdt/internal/core/CreateTypeHierarchyOperation;-><init>(Lorg/eclipse/jdt/core/IRegion;[Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/IType;Z)V

    .line 10
    invoke-virtual {v0, p4}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->runOperation(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    .line 11
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/CreateTypeHierarchyOperation;->getResult()Lorg/eclipse/jdt/core/ITypeHierarchy;

    move-result-object p1

    return-object p1

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/eclipse/jdt/internal/core/util/Messages;->hierarchy_nullRegion:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/eclipse/jdt/internal/core/util/Messages;->hierarchy_nullFocusType:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public projectPrerequisites([Lorg/eclipse/jdt/core/IClasspathEntry;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/core/JavaProject;->NO_PREREQUISITES:[Ljava/lang/String;

    return-object p1

    :cond_0
    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p1

    :cond_1
    aget-object v3, p1, v2

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/core/runtime/IPath;->lastSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public readFileEntriesWithException(Ljava/util/Map;)[[Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;,
            Ljava/io/IOException;,
            Lorg/eclipse/jdt/internal/core/ClasspathEntry$AssertionFailedException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaProject;->project:Lorg/eclipse/core/resources/IProject;

    const-string v1, ".classpath"

    invoke-interface {v0, v1}, Lorg/eclipse/core/resources/IProject;->getFile(Ljava/lang/String;)Lorg/eclipse/core/resources/IFile;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IFile;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getResourceContentsAsByteArray(Lorg/eclipse/core/resources/IFile;)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/eclipse/core/resources/IFile;->getLocationURI()Ljava/net/URI;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->toLocalFile(Ljava/net/URI;Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getFileByteContent(Ljava/io/File;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->hasUTF8BOM([B)Z

    move-result v1

    if-eqz v1, :cond_1

    array-length v1, v0

    sget-object v3, Lorg/eclipse/core/runtime/content/IContentDescription;->BOM_UTF_8:[B

    array-length v3, v3

    sub-int/2addr v1, v3

    sget-object v3, Lorg/eclipse/core/runtime/content/IContentDescription;->BOM_UTF_8:[B

    array-length v3, v3

    new-array v4, v1, [B

    invoke-static {v0, v3, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v4

    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "Could not read .classpath with UTF-8 encoding"

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    :goto_1
    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->decodeClasspath(Ljava/lang/String;Ljava/util/Map;)[[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x2

    new-array p1, p1, [[Lorg/eclipse/jdt/core/IClasspathEntry;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->defaultClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0

    aput-object v0, p1, v2

    const/4 v0, 0x1

    sget-object v1, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_ENTRIES:[Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    aput-object v1, p1, v0

    return-object p1

    :cond_2
    throw p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unable to fetch file from "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot obtain a location URI for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readOutputLocation()Lorg/eclipse/core/runtime/IPath;
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->readFileEntries(Ljava/util/Map;)[[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget-object v2, Lorg/eclipse/jdt/internal/core/JavaProject;->INVALID_CLASSPATH:[Lorg/eclipse/jdt/core/IClasspathEntry;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->defaultOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    return-object v0

    :cond_0
    array-length v2, v1

    if-lez v2, :cond_1

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getContentKind()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public readRawClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->readFileEntries(Ljava/util/Map;)[[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    sget-object v3, Lorg/eclipse/jdt/internal/core/JavaProject;->INVALID_CLASSPATH:[Lorg/eclipse/jdt/core/IClasspathEntry;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->defaultClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0

    return-object v0

    :cond_0
    array-length v3, v2

    if-lez v3, :cond_1

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IClasspathEntry;->getContentKind()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    aget-object v2, v0, v1

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    new-array v4, v3, [Lorg/eclipse/jdt/core/IClasspathEntry;

    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v4, v0, v1

    :cond_1
    aget-object v0, v0, v1

    return-object v0
.end method

.method public removeFromBuildSpec(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaProject;->project:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->getDescription()Lorg/eclipse/core/resources/IProjectDescription;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IProjectDescription;->getBuildSpec()[Lorg/eclipse/core/resources/ICommand;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    if-lt v3, v4, :cond_0

    return-void

    :cond_0
    aget-object v4, v1, v3

    invoke-interface {v4}, Lorg/eclipse/core/resources/ICommand;->getBuilderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    array-length p1, v1

    add-int/lit8 p1, p1, -0x1

    new-array p1, p1, [Lorg/eclipse/core/resources/ICommand;

    invoke-static {v1, v2, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v3, 0x1

    array-length v4, v1

    sub-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v0, p1}, Lorg/eclipse/core/resources/IProjectDescription;->setBuildSpec([Lorg/eclipse/core/resources/ICommand;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaProject;->project:Lorg/eclipse/core/resources/IProject;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/eclipse/core/resources/IProject;->setDescription(Lorg/eclipse/core/resources/IProjectDescription;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public resetCaches()V
    .locals 1

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->peekAtInfo(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo;->resetCaches()V

    :cond_0
    return-void
.end method

.method public resetResolvedClasspath()Lorg/eclipse/jdt/internal/core/ClasspathChange;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPerProjectInfo()Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->resetResolvedClasspath()Lorg/eclipse/jdt/internal/core/ClasspathChange;

    move-result-object v0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public resolveClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;ZZ)Lorg/eclipse/jdt/internal/core/JavaProject$ResolvedClasspath;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/eclipse/jdt/internal/core/JavaProject;->resolveClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;[Lorg/eclipse/jdt/core/IClasspathEntry;ZZ)Lorg/eclipse/jdt/internal/core/JavaProject$ResolvedClasspath;

    move-result-object p1

    return-object p1
.end method

.method public resolveClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;[Lorg/eclipse/jdt/core/IClasspathEntry;ZZ)Lorg/eclipse/jdt/internal/core/JavaProject$ResolvedClasspath;
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v0, p2

    move/from16 v12, p3

    .line 3
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v13

    .line 4
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getExternalManager()Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;

    move-result-object v14

    .line 5
    new-instance v15, Lorg/eclipse/jdt/internal/core/JavaProject$ResolvedClasspath;

    invoke-direct {v15}, Lorg/eclipse/jdt/internal/core/JavaProject$ResolvedClasspath;-><init>()V

    .line 6
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 7
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 8
    new-instance v8, Ljava/util/LinkedHashSet;

    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    .line 9
    new-instance v7, Ljava/util/LinkedHashSet;

    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    const/16 v17, 0x0

    const/4 v6, 0x1

    if-eqz p4, :cond_4

    move/from16 v1, v17

    .line 10
    :goto_0
    array-length v2, v11

    if-lt v1, v2, :cond_2

    if-eqz v0, :cond_4

    .line 11
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    move/from16 v2, v17

    .line 12
    :goto_1
    array-length v3, v0

    if-lt v2, v3, :cond_0

    .line 13
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 14
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    new-array v0, v0, [Lorg/eclipse/jdt/core/IClasspathEntry;

    iput-object v0, v15, Lorg/eclipse/jdt/internal/core/JavaProject$ResolvedClasspath;->referencedEntries:[Lorg/eclipse/jdt/core/IClasspathEntry;

    .line 15
    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_2

    .line 16
    :cond_0
    aget-object v3, v0, v2

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    .line 17
    invoke-interface {v8, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 18
    aget-object v4, v0, v2

    invoke-interface {v9, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 20
    :cond_2
    aget-object v2, v11, v1

    .line 21
    invoke-interface {v2}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 22
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/core/resources/IProject;->getLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-static {v3, v2}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->resolveDotDot(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23
    :cond_4
    :goto_2
    array-length v5, v11

    move/from16 v4, v17

    :goto_3
    if-lt v4, v5, :cond_5

    .line 24
    invoke-virtual {v7}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    new-array v0, v0, [Lorg/eclipse/jdt/core/IClasspathEntry;

    iput-object v0, v15, Lorg/eclipse/jdt/internal/core/JavaProject$ResolvedClasspath;->resolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    .line 25
    invoke-virtual {v7, v0}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v15

    .line 26
    :cond_5
    aget-object v0, v11, v4

    .line 27
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v1

    if-eq v1, v6, :cond_19

    const/4 v2, 0x4

    if-eq v1, v2, :cond_13

    const/4 v2, 0x5

    if-eq v1, v2, :cond_7

    const/16 v18, 0x0

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v0

    move/from16 v19, v4

    move-object v4, v15

    move/from16 v20, v5

    move-object v5, v7

    move-object v6, v14

    move-object/from16 v22, v7

    move-object v7, v9

    move-object v11, v8

    move/from16 v8, v18

    move-object/from16 v18, v9

    move-object/from16 v9, v16

    .line 28
    invoke-direct/range {v1 .. v9}, Lorg/eclipse/jdt/internal/core/JavaProject;->addToResult(Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/internal/core/JavaProject$ResolvedClasspath;Ljava/util/LinkedHashSet;Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;Ljava/util/Map;ZLjava/util/Map;)V

    :cond_6
    :goto_4
    const/16 v23, 0x1

    goto/16 :goto_11

    :cond_7
    move/from16 v19, v4

    move/from16 v20, v5

    move-object/from16 v22, v7

    move-object v11, v8

    move-object/from16 v18, v9

    .line 29
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    if-eqz v12, :cond_8

    invoke-virtual {v13, v1, v10}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getPreviousSessionContainer(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/IClasspathContainer;

    move-result-object v1

    goto :goto_5

    :cond_8
    invoke-static {v1, v10}, Lorg/eclipse/jdt/core/JavaCore;->getClasspathContainer(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/IClasspathContainer;

    move-result-object v1

    :goto_5
    if-nez v1, :cond_9

    .line 30
    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v2, 0x3c3

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-direct {v1, v2, v10, v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/core/runtime/IPath;)V

    iput-object v1, v15, Lorg/eclipse/jdt/internal/core/JavaProject$ResolvedClasspath;->unresolvedEntryStatus:Lorg/eclipse/jdt/core/IJavaModelStatus;

    goto :goto_4

    .line 31
    :cond_9
    invoke-interface {v1}, Lorg/eclipse/jdt/core/IClasspathContainer;->getClasspathEntries()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v9

    if-nez v9, :cond_b

    .line 32
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE:Z

    if-nez v1, :cond_a

    sget-boolean v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_FAILURE:Z

    if-eqz v1, :cond_6

    .line 33
    :cond_a
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v1

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->verbose_missbehaving_container_null_entries(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)V

    goto :goto_4

    .line 34
    :cond_b
    array-length v8, v9

    move/from16 v7, v17

    :goto_6
    if-lt v7, v8, :cond_c

    goto :goto_4

    .line 35
    :cond_c
    aget-object v1, v9, v7

    check-cast v1, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    if-nez v1, :cond_e

    .line 36
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE:Z

    if-nez v1, :cond_d

    sget-boolean v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_FAILURE:Z

    if-eqz v1, :cond_6

    .line 37
    :cond_d
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v1

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {v1, v10, v0, v9}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->verbose_missbehaving_container(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IClasspathEntry;)V

    goto :goto_4

    .line 38
    :cond_e
    move-object v2, v0

    check-cast v2, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->combineWith(Lorg/eclipse/jdt/internal/core/ClasspathEntry;)Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getEntryKind()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_12

    .line 40
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/core/resources/IProject;->getLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->resolvedDotDot(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    move-result-object v21

    if-eqz p4, :cond_f

    .line 41
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v1

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->resolveReferencedLibrariesForContainers:Z

    if-eqz v1, :cond_f

    .line 42
    iget-object v1, v15, Lorg/eclipse/jdt/internal/core/JavaProject$ResolvedClasspath;->rawReverseMap:Ljava/util/HashMap;

    invoke-virtual/range {v21 .. v21}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_f

    .line 43
    invoke-virtual/range {v21 .. v21}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->resolvedChainedLibraries()[Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    move-result-object v5

    .line 44
    array-length v4, v5

    move/from16 v3, v17

    :goto_7
    if-lt v3, v4, :cond_10

    :cond_f
    move/from16 v27, v7

    move/from16 v28, v8

    move-object/from16 v24, v9

    goto :goto_9

    .line 45
    :cond_10
    aget-object v1, v5, v3

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 46
    aget-object v23, v5, v3

    const/16 v24, 0x0

    move-object/from16 v1, p0

    move-object v2, v0

    move/from16 v25, v3

    move-object/from16 v3, v23

    move/from16 v23, v4

    move-object v4, v15

    move-object/from16 v26, v5

    move-object/from16 v5, v22

    move-object v6, v14

    move/from16 v27, v7

    move-object/from16 v7, v18

    move/from16 v28, v8

    move/from16 v8, v24

    move-object/from16 v24, v9

    move-object/from16 v9, v16

    invoke-direct/range {v1 .. v9}, Lorg/eclipse/jdt/internal/core/JavaProject;->addToResult(Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/internal/core/JavaProject$ResolvedClasspath;Ljava/util/LinkedHashSet;Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;Ljava/util/Map;ZLjava/util/Map;)V

    goto :goto_8

    :cond_11
    move/from16 v25, v3

    move/from16 v23, v4

    move-object/from16 v26, v5

    move/from16 v27, v7

    move/from16 v28, v8

    move-object/from16 v24, v9

    :goto_8
    add-int/lit8 v3, v25, 0x1

    move/from16 v4, v23

    move-object/from16 v9, v24

    move-object/from16 v5, v26

    move/from16 v7, v27

    move/from16 v8, v28

    const/4 v6, 0x1

    goto :goto_7

    :goto_9
    move-object/from16 v3, v21

    goto :goto_a

    :cond_12
    move/from16 v27, v7

    move/from16 v28, v8

    move-object/from16 v24, v9

    move-object v3, v1

    :goto_a
    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v4, v15

    move-object/from16 v5, v22

    move-object v6, v14

    move-object/from16 v7, v18

    move-object/from16 v9, v16

    .line 47
    invoke-direct/range {v1 .. v9}, Lorg/eclipse/jdt/internal/core/JavaProject;->addToResult(Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/internal/core/JavaProject$ResolvedClasspath;Ljava/util/LinkedHashSet;Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;Ljava/util/Map;ZLjava/util/Map;)V

    add-int/lit8 v7, v27, 0x1

    move-object/from16 v9, v24

    move/from16 v8, v28

    goto/16 :goto_6

    :cond_13
    move/from16 v19, v4

    move/from16 v20, v5

    move-object/from16 v22, v7

    move-object v11, v8

    move-object/from16 v18, v9

    .line 48
    :try_start_0
    invoke-virtual {v13, v0, v12}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->resolveVariableEntry(Lorg/eclipse/jdt/core/IClasspathEntry;Z)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v21
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/core/ClasspathEntry$AssertionFailedException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v21, :cond_14

    .line 49
    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v2, 0x3c5

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-direct {v1, v2, v10, v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/core/runtime/IPath;)V

    iput-object v1, v15, Lorg/eclipse/jdt/internal/core/JavaProject$ResolvedClasspath;->unresolvedEntryStatus:Lorg/eclipse/jdt/core/IJavaModelStatus;

    goto/16 :goto_4

    :cond_14
    if-eqz p4, :cond_18

    .line 50
    invoke-interface/range {v21 .. v21}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v1

    const/4 v9, 0x1

    if-ne v1, v9, :cond_15

    .line 51
    iget-object v1, v15, Lorg/eclipse/jdt/internal/core/JavaProject$ResolvedClasspath;->rawReverseMap:Ljava/util/HashMap;

    invoke-interface/range {v21 .. v21}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_15

    .line 52
    move-object/from16 v1, v21

    check-cast v1, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->resolvedChainedLibraries()[Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    move-result-object v8

    .line 53
    array-length v7, v8

    move/from16 v6, v17

    :goto_b
    if-lt v6, v7, :cond_16

    :cond_15
    move/from16 v23, v9

    goto :goto_d

    .line 54
    :cond_16
    aget-object v1, v8, v6

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 55
    aget-object v3, v8, v6

    const/16 v23, 0x1

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v4, v15

    move-object/from16 v5, v22

    move/from16 v24, v6

    move-object v6, v14

    move/from16 v25, v7

    move-object/from16 v7, v18

    move-object/from16 v26, v8

    move/from16 v8, v23

    move/from16 v23, v9

    move-object/from16 v9, v16

    invoke-direct/range {v1 .. v9}, Lorg/eclipse/jdt/internal/core/JavaProject;->addToResult(Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/internal/core/JavaProject$ResolvedClasspath;Ljava/util/LinkedHashSet;Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;Ljava/util/Map;ZLjava/util/Map;)V

    goto :goto_c

    :cond_17
    move/from16 v24, v6

    move/from16 v25, v7

    move-object/from16 v26, v8

    move/from16 v23, v9

    :goto_c
    add-int/lit8 v6, v24, 0x1

    move/from16 v9, v23

    move/from16 v7, v25

    move-object/from16 v8, v26

    goto :goto_b

    :cond_18
    const/16 v23, 0x1

    :goto_d
    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object v2, v0

    move-object/from16 v3, v21

    move-object v4, v15

    move-object/from16 v5, v22

    move-object v6, v14

    move-object/from16 v7, v18

    move-object/from16 v9, v16

    .line 56
    invoke-direct/range {v1 .. v9}, Lorg/eclipse/jdt/internal/core/JavaProject;->addToResult(Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/internal/core/JavaProject$ResolvedClasspath;Ljava/util/LinkedHashSet;Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;Ljava/util/Map;ZLjava/util/Map;)V

    goto/16 :goto_11

    :catch_0
    move-exception v0

    const/16 v23, 0x1

    move-object v1, v0

    .line 57
    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v2, 0x3d3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    iput-object v0, v15, Lorg/eclipse/jdt/internal/core/JavaProject$ResolvedClasspath;->unresolvedEntryStatus:Lorg/eclipse/jdt/core/IJavaModelStatus;

    goto/16 :goto_11

    :cond_19
    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v23, v6

    move-object/from16 v22, v7

    move-object v11, v8

    move-object/from16 v18, v9

    .line 58
    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/core/resources/IProject;->getLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->resolvedDotDot(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    move-result-object v21

    if-eqz p4, :cond_1c

    .line 59
    iget-object v1, v15, Lorg/eclipse/jdt/internal/core/JavaProject$ResolvedClasspath;->rawReverseMap:Ljava/util/HashMap;

    invoke-interface/range {v21 .. v21}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1c

    .line 60
    invoke-virtual/range {v21 .. v21}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->resolvedChainedLibraries()[Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    move-result-object v9

    .line 61
    array-length v8, v9

    move/from16 v7, v17

    :goto_e
    if-lt v7, v8, :cond_1a

    goto :goto_10

    .line 62
    :cond_1a
    aget-object v1, v9, v7

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 63
    aget-object v3, v9, v7

    const/16 v24, 0x1

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v4, v15

    move-object/from16 v5, v22

    move-object v6, v14

    move/from16 v25, v7

    move-object/from16 v7, v18

    move/from16 v26, v8

    move/from16 v8, v24

    move-object/from16 v24, v9

    move-object/from16 v9, v16

    invoke-direct/range {v1 .. v9}, Lorg/eclipse/jdt/internal/core/JavaProject;->addToResult(Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/internal/core/JavaProject$ResolvedClasspath;Ljava/util/LinkedHashSet;Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;Ljava/util/Map;ZLjava/util/Map;)V

    goto :goto_f

    :cond_1b
    move/from16 v25, v7

    move/from16 v26, v8

    move-object/from16 v24, v9

    :goto_f
    add-int/lit8 v7, v25, 0x1

    move-object/from16 v9, v24

    move/from16 v8, v26

    goto :goto_e

    :cond_1c
    :goto_10
    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object v2, v0

    move-object/from16 v3, v21

    move-object v4, v15

    move-object/from16 v5, v22

    move-object v6, v14

    move-object/from16 v7, v18

    move-object/from16 v9, v16

    .line 64
    invoke-direct/range {v1 .. v9}, Lorg/eclipse/jdt/internal/core/JavaProject;->addToResult(Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/internal/core/JavaProject$ResolvedClasspath;Ljava/util/LinkedHashSet;Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;Ljava/util/Map;ZLjava/util/Map;)V

    :goto_11
    add-int/lit8 v4, v19, 0x1

    move-object v8, v11

    move-object/from16 v9, v18

    move/from16 v5, v20

    move-object/from16 v7, v22

    move/from16 v6, v23

    move-object/from16 v11, p1

    goto/16 :goto_3
.end method

.method public resolveClasspath(Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;ZZ)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    move-object v1, p0

    move-object v2, p1

    move/from16 v0, p2

    .line 65
    sget-object v3, Lorg/eclipse/jdt/internal/core/JavaProject;->CP_RESOLUTION_BP_LISTENERS:Ljava/util/ArrayList;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 66
    invoke-static {v4, p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->breakpoint(ILorg/eclipse/jdt/internal/core/JavaProject;)V

    .line 67
    :cond_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v10

    .line 68
    invoke-virtual {v10, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->isClasspathBeingResolved(Lorg/eclipse/jdt/core/IJavaProject;)Z

    move-result v11

    const/4 v12, 0x3

    const/4 v13, 0x0

    if-nez v11, :cond_1

    .line 69
    :try_start_0
    invoke-virtual {v10, p0, v4}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->setClasspathBeingResolved(Lorg/eclipse/jdt/core/IJavaProject;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_1
    :goto_0
    const/4 v3, 0x2

    .line 70
    new-array v5, v3, [[Lorg/eclipse/jdt/core/IClasspathEntry;

    .line 71
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :try_start_1
    iget-object v6, v2, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->rawClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    aput-object v6, v5, v13

    .line 73
    iget-object v7, v2, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->referencedEntries:[Lorg/eclipse/jdt/core/IClasspathEntry;

    aput-object v7, v5, v4

    if-nez v6, :cond_2

    .line 74
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->readAndCacheClasspath(Lorg/eclipse/jdt/internal/core/JavaProject;)[[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v5

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 75
    :cond_2
    :goto_1
    iget v8, v2, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->rawTimeStamp:I

    .line 76
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    :try_start_2
    aget-object v6, v5, v13

    aget-object v5, v5, v4

    invoke-virtual {p0, v6, v5, v0, v4}, Lorg/eclipse/jdt/internal/core/JavaProject;->resolveClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;[Lorg/eclipse/jdt/core/IClasspathEntry;ZZ)Lorg/eclipse/jdt/internal/core/JavaProject$ResolvedClasspath;

    move-result-object v4

    .line 78
    sget-object v5, Lorg/eclipse/jdt/internal/core/JavaProject;->CP_RESOLUTION_BP_LISTENERS:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    .line 79
    invoke-static {v3, p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->breakpoint(ILorg/eclipse/jdt/internal/core/JavaProject;)V

    .line 80
    :cond_3
    iget-object v3, v4, Lorg/eclipse/jdt/internal/core/JavaProject$ResolvedClasspath;->resolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    iget-object v5, v4, Lorg/eclipse/jdt/internal/core/JavaProject$ResolvedClasspath;->referencedEntries:[Lorg/eclipse/jdt/core/IClasspathEntry;

    iget-object v6, v4, Lorg/eclipse/jdt/internal/core/JavaProject$ResolvedClasspath;->rawReverseMap:Ljava/util/HashMap;

    iget-object v7, v4, Lorg/eclipse/jdt/internal/core/JavaProject$ResolvedClasspath;->rootPathToResolvedEntries:Ljava/util/Map;

    if-eqz v0, :cond_4

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->NEED_RESOLUTION:Lorg/eclipse/jdt/core/IJavaModelStatus;

    goto :goto_2

    :cond_4
    iget-object v0, v4, Lorg/eclipse/jdt/internal/core/JavaProject$ResolvedClasspath;->unresolvedEntryStatus:Lorg/eclipse/jdt/core/IJavaModelStatus;

    :goto_2
    move-object v2, p1

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v0

    move/from16 v9, p3

    invoke-virtual/range {v2 .. v9}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->setResolvedClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;[Lorg/eclipse/jdt/core/IClasspathEntry;Ljava/util/Map;Ljava/util/Map;Lorg/eclipse/jdt/core/IJavaModelStatus;IZ)Lorg/eclipse/jdt/internal/core/ClasspathChange;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v11, :cond_5

    .line 81
    invoke-virtual {v10, p0, v13}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->setClasspathBeingResolved(Lorg/eclipse/jdt/core/IJavaProject;Z)V

    .line 82
    :cond_5
    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaProject;->CP_RESOLUTION_BP_LISTENERS:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 83
    invoke-static {v12, p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->breakpoint(ILorg/eclipse/jdt/internal/core/JavaProject;)V

    :cond_6
    return-void

    .line 84
    :goto_3
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_4
    if-nez v11, :cond_7

    .line 85
    invoke-virtual {v10, p0, v13}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->setClasspathBeingResolved(Lorg/eclipse/jdt/core/IJavaProject;Z)V

    .line 86
    :cond_7
    sget-object v2, Lorg/eclipse/jdt/internal/core/JavaProject;->CP_RESOLUTION_BP_LISTENERS:Ljava/util/ArrayList;

    if-eqz v2, :cond_8

    .line 87
    invoke-static {v12, p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->breakpoint(ILorg/eclipse/jdt/internal/core/JavaProject;)V

    .line 88
    :cond_8
    throw v0
.end method

.method public resolveClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;)[Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->resolveClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;ZZ)Lorg/eclipse/jdt/internal/core/JavaProject$ResolvedClasspath;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/JavaProject$ResolvedClasspath;->resolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    return-object p1
.end method

.method public resource(Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;)Lorg/eclipse/core/resources/IResource;
    .locals 0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaProject;->project:Lorg/eclipse/core/resources/IProject;

    return-object p1
.end method

.method public rootID()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[PRJ]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaProject;->project:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v1}, Lorg/eclipse/core/resources/IProject;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setModuleDescription(Lorg/eclipse/jdt/core/IModuleDescription;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->getModule()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lorg/eclipse/jdt/core/IJavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    invoke-interface {p1, v2}, Lorg/eclipse/jdt/core/IJavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance v0, Lorg/eclipse/core/runtime/Status;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_duplicateEntryPath:Ljava/lang/String;

    const-string v2, "module-info.java"

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const-string v3, "org.eclipse.jdt.core"

    invoke-direct {v0, v2, v3, v1}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/IStatus;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->setModule(Lorg/eclipse/jdt/core/IModuleDescription;)V

    return-void
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getEclipsePreferences()Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    move-result-object v0

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v0, v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->storePreference(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {v0}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->flush()V
    :try_end_0
    .catch Lorg/osgi/service/prefs/BackingStoreException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setOptions(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getEclipsePreferences()Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    :try_start_0
    invoke-interface {v0}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->clear()V

    goto :goto_2

    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v0}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->keys()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v2, :cond_2

    :goto_2
    invoke-interface {v0}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->flush()V
    :try_end_0
    .catch Lorg/osgi/service/prefs/BackingStoreException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPerProjectInfo()Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    move-result-object p1

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->options:Ljava/util/Hashtable;
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/osgi/service/prefs/BackingStoreException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_2
    :try_start_2
    aget-object v4, v1, v3

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {v0, v4}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->remove(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v4, v3, v0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->storePreference(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;Ljava/util/Map;)Z
    :try_end_2
    .catch Lorg/osgi/service/prefs/BackingStoreException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    :goto_3
    return-void
.end method

.method public setOutputLocation(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getRawClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/eclipse/jdt/internal/core/JavaProject;->setRawClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/eclipse/jdt/internal/core/util/Messages;->path_nullPath:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setProject(Lorg/eclipse/core/resources/IProject;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaProject;->project:Lorg/eclipse/core/resources/IProject;

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModel()Lorg/eclipse/jdt/internal/core/JavaModel;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    return-void
.end method

.method public setRawClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/eclipse/jdt/internal/core/JavaProject;->setRawClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;ZLorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public setRawClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;ZLorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 3
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/JavaProject;->setRawClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;[Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;ZLorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public setRawClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    const/4 v1, 0x1

    .line 12
    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/eclipse/jdt/internal/core/JavaProject;->setRawClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;ZLorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public setRawClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;ZLorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/eclipse/jdt/internal/core/JavaProject;->setRawClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;ZLorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public setRawClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;[Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 5
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/JavaProject;->setRawClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;[Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;ZLorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public setRawClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;[Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;ZLorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->defaultClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p1

    :cond_0
    move-object v2, p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 7
    :goto_0
    new-instance p1, Lorg/eclipse/jdt/internal/core/SetClasspathOperation;

    move-object v0, p1

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/SetClasspathOperation;-><init>(Lorg/eclipse/jdt/internal/core/JavaProject;[Lorg/eclipse/jdt/core/IClasspathEntry;[Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;Z)V

    .line 8
    invoke-virtual {p1, p5}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->runOperation(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 9
    :goto_1
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object p2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getDeltaProcessor()Lorg/eclipse/jdt/internal/core/DeltaProcessor;

    move-result-object p2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->flush()V

    .line 10
    throw p1
.end method

.method public setSharedProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaProject;->project:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v0, p1}, Lorg/eclipse/core/resources/IProject;->getFile(Ljava/lang/String;)Lorg/eclipse/core/resources/IFile;

    move-result-object p1

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not write .classpath with UTF-8 encoding "

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    :goto_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p1}, Lorg/eclipse/core/resources/IFile;->exists()Z

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    invoke-interface {p1}, Lorg/eclipse/core/resources/IFile;->isReadOnly()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object p2

    new-array v3, v2, [Lorg/eclipse/core/resources/IFile;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    sget-object v4, Lorg/eclipse/core/resources/IWorkspace;->VALIDATE_PROMPT:Ljava/lang/Object;

    invoke-interface {p2, v3, v4}, Lorg/eclipse/core/resources/IWorkspace;->validateEdit([Lorg/eclipse/core/resources/IFile;Ljava/lang/Object;)Lorg/eclipse/core/runtime/IStatus;

    :cond_0
    invoke-interface {p1, v0, v2, v1}, Lorg/eclipse/core/resources/IFile;->setContents(Ljava/io/InputStream;ILorg/eclipse/core/runtime/IProgressMonitor;)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0, v2, v1}, Lorg/eclipse/core/resources/IFile;->create(Ljava/io/InputStream;ILorg/eclipse/core/runtime/IProgressMonitor;)V

    :goto_1
    return-void
.end method

.method public updateCycleParticipants(Ljava/util/ArrayList;Ljava/util/LinkedHashSet;Lorg/eclipse/core/resources/IWorkspaceRoot;Ljava/util/HashSet;Ljava/util/Map;)V
    .locals 16

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v9, :cond_0

    move-object/from16 v11, p0

    :try_start_0
    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jdt/core/IClasspathEntry;

    goto :goto_0

    :cond_0
    move-object/from16 v11, p0

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0

    :cond_1
    move-object v12, v0

    array-length v13, v12

    const/4 v14, 0x0

    move v15, v14

    :goto_1
    if-lt v15, v13, :cond_2

    goto :goto_5

    :cond_2
    aget-object v0, v12, v15

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v14

    goto :goto_2

    :cond_3
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    :goto_2
    if-ltz v1, :cond_5

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3
    if-lt v1, v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v8, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    move-object/from16 v5, p3

    invoke-interface {v5, v0}, Lorg/eclipse/core/resources/IWorkspaceRoot;->findMember(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    check-cast v0, Lorg/eclipse/core/resources/IProject;

    invoke-static {v0}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaProject;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/JavaProject;->updateCycleParticipants(Ljava/util/ArrayList;Ljava/util/LinkedHashSet;Lorg/eclipse/core/resources/IWorkspaceRoot;Ljava/util/HashSet;Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :catch_0
    :goto_5
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public validateExistence(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/core/runtime/IStatus;
    .locals 1

    :try_start_0
    check-cast p1, Lorg/eclipse/core/resources/IProject;

    const-string v0, "org.eclipse.jdt.core.javanature"

    invoke-interface {p1, v0}, Lorg/eclipse/core/resources/IProject;->hasNature(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->newDoesNotExistStatus()Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    move-result-object p1
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    sget-object p1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    return-object p1

    :catch_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->newDoesNotExistStatus()Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    move-result-object p1

    return-object p1
.end method

.method public writeFileEntries([Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 9
    sget-object v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_ENTRIES:[Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual {p0, p1, v0, p2}, Lorg/eclipse/jdt/internal/core/JavaProject;->writeFileEntries([Lorg/eclipse/jdt/core/IClasspathEntry;[Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;)Z

    move-result p1

    return p1
.end method

.method public writeFileEntries([Lorg/eclipse/jdt/core/IClasspathEntry;[Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaProject;->project:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->isAccessible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-direct {p0, v7}, Lorg/eclipse/jdt/internal/core/JavaProject;->readFileEntries(Ljava/util/Map;)[[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0

    .line 4
    aget-object v2, v0, v1

    sget-object v3, Lorg/eclipse/jdt/internal/core/JavaProject;->INVALID_CLASSPATH:[Lorg/eclipse/jdt/core/IClasspathEntry;

    const/4 v8, 0x1

    if-eq v2, v3, :cond_2

    .line 5
    invoke-static {p1, p3, v2}, Lorg/eclipse/jdt/internal/core/JavaProject;->areClasspathsEqual([Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IClasspathEntry;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p2, :cond_1

    .line 6
    aget-object v0, v0, v8

    invoke-static {p2, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->areClasspathsEqual([Lorg/eclipse/jdt/core/IClasspathEntry;[Lorg/eclipse/jdt/core/IClasspathEntry;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v1

    .line 7
    :cond_2
    :try_start_0
    const-string v0, ".classpath"

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/JavaProject;->encodeClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;[Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;ZLjava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->setSharedProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    return v8

    :catch_0
    move-exception p1

    .line 8
    new-instance p2, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw p2
.end method
