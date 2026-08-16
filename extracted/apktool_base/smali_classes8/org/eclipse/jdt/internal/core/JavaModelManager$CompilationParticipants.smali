.class public Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/JavaModelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompilationParticipants"
.end annotation


# static fields
.field static final MAX_SOURCE_LEVEL:I


# instance fields
.field private managedMarkerTypes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private registeredParticipants:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getAllVersions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;->MAX_SOURCE_LEVEL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;->registeredParticipants:[[Ljava/lang/Object;

    return-void
.end method

.method private declared-synchronized getRegisteredParticipants()[[Ljava/lang/Object;
    .locals 13

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;->registeredParticipants:[[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;->managedMarkerTypes:Ljava/util/HashSet;

    invoke-static {}, Lorg/eclipse/core/runtime/Platform;->getExtensionRegistry()Lorg/eclipse/core/runtime/IExtensionRegistry;

    move-result-object v0

    const-string v1, "org.eclipse.jdt.core"

    const-string v2, "compilationParticipant"

    invoke-interface {v0, v1, v2}, Lorg/eclipse/core/runtime/IExtensionRegistry;->getExtensionPoint(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IExtensionPoint;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->NO_PARTICIPANTS:[[Ljava/lang/Object;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;->registeredParticipants:[[Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_1
    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IExtensionPoint;->getExtensions()[Lorg/eclipse/core/runtime/IExtension;

    move-result-object v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    array-length v6, v0

    if-lt v5, v6, :cond_6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v0, v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v0, v5

    if-nez v0, :cond_2

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->NO_PARTICIPANTS:[[Ljava/lang/Object;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;->registeredParticipants:[[Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_3
    new-array v5, v0, [Lorg/eclipse/core/runtime/IConfigurationElement;

    invoke-direct {p0, v1, v5, v4}, Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;->sortParticipants(Ljava/util/ArrayList;[Lorg/eclipse/core/runtime/IConfigurationElement;I)I

    move-result v1

    invoke-direct {p0, v2, v5, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;->sortParticipants(Ljava/util/ArrayList;[Lorg/eclipse/core/runtime/IConfigurationElement;I)I

    move-result v1

    invoke-direct {p0, v3, v5, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;->sortParticipants(Ljava/util/ArrayList;[Lorg/eclipse/core/runtime/IConfigurationElement;I)I

    sget v1, Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;->MAX_SOURCE_LEVEL:I

    new-array v1, v1, [[Ljava/lang/Object;

    move v2, v4

    :goto_1
    sget v3, Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;->MAX_SOURCE_LEVEL:I

    if-lt v2, v3, :cond_5

    :goto_2
    if-lt v4, v0, :cond_3

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;->registeredParticipants:[[Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_3
    :try_start_4
    aget-object v2, v5, v4

    const-string v3, "requiredSourceLevel"

    invoke-interface {v2, v3}, Lorg/eclipse/core/runtime/IConfigurationElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;->indexForSourceLevel(Ljava/lang/String;)I

    move-result v2

    :goto_3
    sget v3, Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;->MAX_SOURCE_LEVEL:I

    if-lt v2, v3, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    aget-object v3, v1, v2

    aget-object v6, v5, v4

    aput-object v6, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    new-array v3, v0, [Ljava/lang/Object;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    aget-object v6, v0, v5

    invoke-interface {v6}, Lorg/eclipse/core/runtime/IExtension;->getConfigurationElements()[Lorg/eclipse/core/runtime/IConfigurationElement;

    move-result-object v6

    move v7, v4

    :goto_4
    array-length v8, v6

    if-lt v7, v8, :cond_7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    aget-object v8, v6, v7

    invoke-interface {v8}, Lorg/eclipse/core/runtime/IConfigurationElement;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "compilationParticipant"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_7

    :cond_8
    const-string v9, "true"

    const-string v10, "modifiesEnvironment"

    invoke-interface {v8, v10}, Lorg/eclipse/core/runtime/IConfigurationElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    const-string v9, "true"

    const-string v10, "createsProblems"

    invoke-interface {v8, v10}, Lorg/eclipse/core/runtime/IConfigurationElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    const-string v9, "managedMarker"

    invoke-interface {v8, v9}, Lorg/eclipse/core/runtime/IConfigurationElement;->getChildren(Ljava/lang/String;)[Lorg/eclipse/core/runtime/IConfigurationElement;

    move-result-object v8

    array-length v9, v8

    move v10, v4

    :goto_6
    if-lt v10, v9, :cond_b

    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_b
    aget-object v11, v8, v10

    const-string v12, "markerType"

    invoke-interface {v11, v12}, Lorg/eclipse/core/runtime/IConfigurationElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_c

    iget-object v12, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;->managedMarkerTypes:Ljava/util/HashSet;

    invoke-virtual {v12, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :goto_8
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method private indexForSourceLevel(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v1

    const/16 p1, 0x10

    ushr-long/2addr v1, p1

    long-to-int p1, v1

    const/16 v1, 0x2e

    if-le p1, v1, :cond_1

    add-int/lit8 p1, p1, -0x2d

    return p1

    :cond_1
    return v0
.end method

.method private sortParticipants(Ljava/util/ArrayList;[Lorg/eclipse/core/runtime/IConfigurationElement;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/eclipse/core/runtime/IConfigurationElement;",
            ">;[",
            "Lorg/eclipse/core/runtime/IConfigurationElement;",
            "I)I"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return p3

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p1

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants$2;

    invoke-direct {v1, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants$2;-><init>(Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;)V

    invoke-static {p1, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->sort([Ljava/lang/Object;Lorg/eclipse/jdt/internal/core/util/Util$Comparer;)V

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    add-int/2addr p3, v0

    return p3

    :cond_1
    add-int v2, p3, v1

    aget-object v3, p1, v1

    check-cast v3, Lorg/eclipse/core/runtime/IConfigurationElement;

    aput-object v3, p2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCompilationParticipants(Lorg/eclipse/jdt/core/IJavaProject;)[Lorg/eclipse/jdt/core/compiler/CompilationParticipant;
    .locals 18

    move-object/from16 v0, p1

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;->getRegisteredParticipants()[[Ljava/lang/Object;

    move-result-object v7

    sget-object v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->NO_PARTICIPANTS:[[Ljava/lang/Object;

    const/4 v8, 0x0

    if-ne v7, v1, :cond_0

    return-object v8

    :cond_0
    const-string v1, "org.eclipse.jdt.core.compiler.source"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v9, p0

    invoke-direct {v9, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;->indexForSourceLevel(Ljava/lang/String;)I

    move-result v10

    aget-object v11, v7, v10

    array-length v12, v11

    new-array v13, v12, [Lorg/eclipse/jdt/core/compiler/CompilationParticipant;

    const/4 v14, 0x0

    move v6, v14

    move v15, v6

    :goto_0
    if-lt v15, v12, :cond_3

    if-nez v6, :cond_1

    return-object v8

    :cond_1
    if-ge v6, v12, :cond_2

    new-array v0, v6, [Lorg/eclipse/jdt/core/compiler/CompilationParticipant;

    invoke-static {v13, v14, v0, v14, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v13, v0

    :cond_2
    return-object v13

    :cond_3
    aget-object v1, v11, v15

    instance-of v2, v1, Lorg/eclipse/core/runtime/IConfigurationElement;

    if-eqz v2, :cond_4

    move-object v3, v1

    check-cast v3, Lorg/eclipse/core/runtime/IConfigurationElement;

    new-instance v16, Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants$1;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move v4, v10

    move-object v5, v7

    move/from16 v17, v6

    move v6, v15

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants$1;-><init>(Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;Lorg/eclipse/core/runtime/IConfigurationElement;I[[Ljava/lang/Object;I)V

    invoke-static/range {v16 .. v16}, Lorg/eclipse/core/runtime/SafeRunner;->run(Lorg/eclipse/core/runtime/ISafeRunnable;)V

    goto :goto_1

    :cond_4
    move/from16 v17, v6

    :goto_1
    aget-object v1, v11, v15

    instance-of v2, v1, Lorg/eclipse/jdt/core/compiler/CompilationParticipant;

    if-eqz v2, :cond_5

    check-cast v1, Lorg/eclipse/jdt/core/compiler/CompilationParticipant;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/core/compiler/CompilationParticipant;->isActive(Lorg/eclipse/jdt/core/IJavaProject;)Z

    move-result v2

    if-eqz v2, :cond_5

    add-int/lit8 v6, v17, 0x1

    aput-object v1, v13, v17

    goto :goto_2

    :cond_5
    move/from16 v6, v17

    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_0
.end method

.method public managedMarkerTypes()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;->managedMarkerTypes:Ljava/util/HashSet;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;->getRegisteredParticipants()[[Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;->managedMarkerTypes:Ljava/util/HashSet;

    return-object v0
.end method
