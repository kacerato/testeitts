.class public Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/JavaModelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PerProjectInfo"
.end annotation


# static fields
.field private static final JAVADOC_CACHE_INITIAL_SIZE:I = 0xa

.field static final NEED_RESOLUTION:Lorg/eclipse/jdt/core/IJavaModelStatus;


# instance fields
.field volatile indexingSecondaryCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/core/resources/IFile;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/core/IType;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public javadocCache:Lorg/eclipse/jdt/internal/core/util/LRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/util/LRUCache<",
            "Lorg/eclipse/jdt/core/IJavaElement;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public jrtRoots:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/core/runtime/IPath;",
            "Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;",
            ">;"
        }
    .end annotation
.end field

.field public options:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public outputLocation:Lorg/eclipse/core/runtime/IPath;

.field public preferences:Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

.field public project:Lorg/eclipse/core/resources/IProject;

.field public rawClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

.field public rawClasspathStatus:Lorg/eclipse/jdt/core/IJavaModelStatus;

.field public rawTimeStamp:I

.field public referencedEntries:[Lorg/eclipse/jdt/core/IClasspathEntry;

.field public resolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

.field public rootPathToRawEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/core/runtime/IPath;",
            "Lorg/eclipse/jdt/core/IClasspathEntry;",
            ">;"
        }
    .end annotation
.end field

.field public rootPathToResolvedEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/core/runtime/IPath;",
            "Lorg/eclipse/jdt/core/IClasspathEntry;",
            ">;"
        }
    .end annotation
.end field

.field public savedState:Ljava/lang/Object;

.field public secondaryTypes:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/core/IType;",
            ">;>;"
        }
    .end annotation
.end field

.field public triedRead:Z

.field public unresolvedEntryStatus:Lorg/eclipse/jdt/core/IJavaModelStatus;

.field public writtingRawClasspath:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->NEED_RESOLUTION:Lorg/eclipse/jdt/core/IJavaModelStatus;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/core/resources/IProject;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->rawTimeStamp:I

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->writtingRawClasspath:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->triedRead:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->savedState:Ljava/lang/Object;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->project:Lorg/eclipse/core/resources/IProject;

    new-instance p1, Lorg/eclipse/jdt/internal/core/util/LRUCache;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/internal/core/util/LRUCache;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->javadocCache:Lorg/eclipse/jdt/internal/core/util/LRUCache;

    return-void
.end method

.method private setClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;[Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaModelStatus;[Lorg/eclipse/jdt/core/IClasspathEntry;Ljava/util/Map;Ljava/util/Map;Lorg/eclipse/jdt/core/IJavaModelStatus;Z)Lorg/eclipse/jdt/internal/core/ClasspathChange;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/eclipse/jdt/core/IClasspathEntry;",
            "[",
            "Lorg/eclipse/jdt/core/IClasspathEntry;",
            "Lorg/eclipse/core/runtime/IPath;",
            "Lorg/eclipse/jdt/core/IJavaModelStatus;",
            "[",
            "Lorg/eclipse/jdt/core/IClasspathEntry;",
            "Ljava/util/Map<",
            "Lorg/eclipse/core/runtime/IPath;",
            "Lorg/eclipse/jdt/core/IClasspathEntry;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/eclipse/core/runtime/IPath;",
            "Lorg/eclipse/jdt/core/IClasspathEntry;",
            ">;",
            "Lorg/eclipse/jdt/core/IJavaModelStatus;",
            "Z)",
            "Lorg/eclipse/jdt/internal/core/ClasspathChange;"
        }
    .end annotation

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->DEBUG_CLASSPATH:Z

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting resolved classpath for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->project:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v2}, Lorg/eclipse/core/resources/IProject;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-nez p5, :cond_0

    const-string v1, "New classpath = null"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    array-length v0, p5

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    goto :goto_1

    :cond_1
    aget-object v2, p5, v1

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz p9, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->addClasspathChange()Lorg/eclipse/jdt/internal/core/ClasspathChange;

    move-result-object p9

    goto :goto_2

    :cond_3
    const/4 p9, 0x0

    :goto_2
    if-eqz p2, :cond_4

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->referencedEntries:[Lorg/eclipse/jdt/core/IClasspathEntry;

    :cond_4
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->referencedEntries:[Lorg/eclipse/jdt/core/IClasspathEntry;

    if-nez p2, :cond_5

    sget-object p2, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_ENTRIES:[Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->referencedEntries:[Lorg/eclipse/jdt/core/IClasspathEntry;

    :cond_5
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->rawClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->outputLocation:Lorg/eclipse/core/runtime/IPath;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->rawClasspathStatus:Lorg/eclipse/jdt/core/IJavaModelStatus;

    iput-object p5, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->resolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    iput-object p6, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->rootPathToRawEntries:Ljava/util/Map;

    iput-object p7, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->rootPathToResolvedEntries:Ljava/util/Map;

    iput-object p8, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->unresolvedEntryStatus:Lorg/eclipse/jdt/core/IJavaModelStatus;

    new-instance p1, Lorg/eclipse/jdt/internal/core/util/LRUCache;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/internal/core/util/LRUCache;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->javadocCache:Lorg/eclipse/jdt/internal/core/util/LRUCache;

    return-object p9
.end method


# virtual methods
.method public addClasspathChange()Lorg/eclipse/jdt/internal/core/ClasspathChange;
    .locals 5

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->deltaState:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->project:Lorg/eclipse/core/resources/IProject;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->rawClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->outputLocation:Lorg/eclipse/core/runtime/IPath;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->resolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->addClasspathChange(Lorg/eclipse/core/resources/IProject;[Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IClasspathEntry;)Lorg/eclipse/jdt/internal/core/ClasspathChange;

    move-result-object v0

    return-object v0
.end method

.method public forgetExternalTimestampsAndIndexes()V
    .locals 9

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->resolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v1

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->indexManager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->deltaState:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->getExternalLibTimeStamps()Ljava/util/Hashtable;

    move-result-object v1

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getDeltaState()Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->otherRoots:Ljava/util/Map;

    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v4, :cond_1

    return-void

    :cond_1
    aget-object v6, v0, v5

    invoke-interface {v6}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    invoke-interface {v6}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_2

    invoke-virtual {v1, v6}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v6}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->removeIndex(Lorg/eclipse/core/runtime/IPath;)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public declared-synchronized getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->unresolvedEntryStatus:Lorg/eclipse/jdt/core/IJavaModelStatus;

    sget-object v1, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->NEED_RESOLUTION:Lorg/eclipse/jdt/core/IJavaModelStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->resolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized readAndCacheClasspath(Lorg/eclipse/jdt/internal/core/JavaProject;)[[Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 8

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/16 v2, 0x3e8

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->readFileEntriesWithException(Ljava/util/Map;)[[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v5

    sget-object p1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/eclipse/jdt/internal/core/ClasspathEntry$AssertionFailedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception v5

    goto :goto_0

    :catch_1
    move-exception v5

    goto :goto_1

    :goto_0
    :try_start_1
    new-array v1, v1, [[Lorg/eclipse/jdt/core/IClasspathEntry;

    sget-object v6, Lorg/eclipse/jdt/internal/core/JavaProject;->INVALID_CLASSPATH:[Lorg/eclipse/jdt/core/IClasspathEntry;

    aput-object v6, v1, v4

    sget-object v6, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_ENTRIES:[Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    aput-object v6, v1, v3

    new-instance v6, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v7, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_illegalEntryInClasspathFile:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    filled-new-array {p1, v5}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v6, v2, p1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    move-object v5, v1

    move-object p1, v6

    goto :goto_3

    :goto_1
    new-array v1, v1, [[Lorg/eclipse/jdt/core/IClasspathEntry;

    sget-object v6, Lorg/eclipse/jdt/internal/core/JavaProject;->INVALID_CLASSPATH:[Lorg/eclipse/jdt/core/IClasspathEntry;

    aput-object v6, v1, v4

    sget-object v6, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_ENTRIES:[Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    aput-object v6, v1, v3

    sget-object v6, Lorg/eclipse/jdt/internal/core/util/Messages;->file_badFormat:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v6, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_xmlFormatError:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getElementName()Ljava/lang/String;

    move-result-object p1

    sget-object v7, Lorg/eclipse/jdt/internal/core/util/Messages;->file_badFormat:Ljava/lang/String;

    invoke-static {v6, p1, v7}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, v2, p1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    :goto_2
    move-object p1, v5

    move-object v5, v1

    goto :goto_3

    :cond_0
    new-instance v5, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v6, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_cannotReadClasspathFile:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, v2, p1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    goto :goto_2

    :catch_2
    new-array v5, v1, [[Lorg/eclipse/jdt/core/IClasspathEntry;

    sget-object v1, Lorg/eclipse/jdt/internal/core/JavaProject;->INVALID_CLASSPATH:[Lorg/eclipse/jdt/core/IClasspathEntry;

    aput-object v1, v5, v4

    sget-object v1, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_ENTRIES:[Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    aput-object v1, v5, v3

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v6, Lorg/eclipse/jdt/internal/core/util/Messages;->classpath_cannotReadClasspathFile:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    move-object p1, v1

    :goto_3
    aget-object v1, v5, v4

    array-length v2, v1

    if-lez v2, :cond_1

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getContentKind()I

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    new-array v1, v2, [Lorg/eclipse/jdt/core/IClasspathEntry;

    aget-object v6, v5, v4

    invoke-static {v6, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v1, v5, v4

    :cond_1
    aget-object v1, v5, v4

    aget-object v2, v5, v3

    invoke-virtual {p0, v1, v2, v0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->setRawClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;[Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaModelStatus;)Lorg/eclipse/jdt/internal/core/ClasspathChange;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v5

    :goto_4
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public rememberExternalLibTimestamps()V
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->resolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->deltaState:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->getExternalLibTimeStamps()Ljava/util/Hashtable;

    move-result-object v1

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_1

    return-void

    :cond_1
    aget-object v4, v0, v3

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-static {v4, v6}, Lorg/eclipse/jdt/internal/core/JavaModel;->getExternalTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/io/File;

    if-eqz v6, :cond_2

    check-cast v5, Ljava/io/File;

    invoke-static {v5}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->getTimeStamp(Ljava/io/File;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public declared-synchronized resetResolvedClasspath()Lorg/eclipse/jdt/internal/core/ClasspathChange;
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->resetClasspathListCache()V

    iget v6, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->rawTimeStamp:I

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->setResolvedClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;Ljava/util/Map;Ljava/util/Map;Lorg/eclipse/jdt/core/IJavaModelStatus;IZ)Lorg/eclipse/jdt/internal/core/ClasspathChange;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized setJrtPackageRoots(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->jrtRoots:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->jrtRoots:Ljava/util/Map;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->jrtRoots:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setRawClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaModelStatus;)Lorg/eclipse/jdt/internal/core/ClasspathChange;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->setRawClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;[Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaModelStatus;)Lorg/eclipse/jdt/internal/core/ClasspathChange;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized setRawClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;[Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaModelStatus;)Lorg/eclipse/jdt/internal/core/ClasspathChange;
    .locals 11

    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->rawTimeStamp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->rawTimeStamp:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 3
    invoke-direct/range {v1 .. v10}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->setClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;[Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaModelStatus;[Lorg/eclipse/jdt/core/IClasspathEntry;Ljava/util/Map;Ljava/util/Map;Lorg/eclipse/jdt/core/IJavaModelStatus;Z)Lorg/eclipse/jdt/internal/core/ClasspathChange;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setResolvedClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;Ljava/util/Map;Ljava/util/Map;Lorg/eclipse/jdt/core/IJavaModelStatus;IZ)Lorg/eclipse/jdt/internal/core/ClasspathChange;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/eclipse/jdt/core/IClasspathEntry;",
            "Ljava/util/Map<",
            "Lorg/eclipse/core/runtime/IPath;",
            "Lorg/eclipse/jdt/core/IClasspathEntry;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/eclipse/core/runtime/IPath;",
            "Lorg/eclipse/jdt/core/IClasspathEntry;",
            ">;",
            "Lorg/eclipse/jdt/core/IJavaModelStatus;",
            "IZ)",
            "Lorg/eclipse/jdt/internal/core/ClasspathChange;"
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    .line 1
    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->setResolvedClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;[Lorg/eclipse/jdt/core/IClasspathEntry;Ljava/util/Map;Ljava/util/Map;Lorg/eclipse/jdt/core/IJavaModelStatus;IZ)Lorg/eclipse/jdt/internal/core/ClasspathChange;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized setResolvedClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;[Lorg/eclipse/jdt/core/IClasspathEntry;Ljava/util/Map;Ljava/util/Map;Lorg/eclipse/jdt/core/IJavaModelStatus;IZ)Lorg/eclipse/jdt/internal/core/ClasspathChange;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/eclipse/jdt/core/IClasspathEntry;",
            "[",
            "Lorg/eclipse/jdt/core/IClasspathEntry;",
            "Ljava/util/Map<",
            "Lorg/eclipse/core/runtime/IPath;",
            "Lorg/eclipse/jdt/core/IClasspathEntry;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/eclipse/core/runtime/IPath;",
            "Lorg/eclipse/jdt/core/IClasspathEntry;",
            ">;",
            "Lorg/eclipse/jdt/core/IJavaModelStatus;",
            "IZ)",
            "Lorg/eclipse/jdt/internal/core/ClasspathChange;"
        }
    .end annotation

    move-object v11, p0

    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, v11, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->rawTimeStamp:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v1, p6

    if-eq v0, v1, :cond_0

    .line 3
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    :try_start_1
    iget-object v2, v11, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->rawClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    iget-object v4, v11, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->outputLocation:Lorg/eclipse/core/runtime/IPath;

    iget-object v5, v11, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->rawClasspathStatus:Lorg/eclipse/jdt/core/IJavaModelStatus;

    move-object v1, p0

    move-object v3, p2

    move-object v6, p1

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->setClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;[Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaModelStatus;[Lorg/eclipse/jdt/core/IClasspathEntry;Ljava/util/Map;Ljava/util/Map;Lorg/eclipse/jdt/core/IJavaModelStatus;Z)Lorg/eclipse/jdt/internal/core/ClasspathChange;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Info for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->project:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v1}, Lorg/eclipse/core/resources/IProject;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "\nRaw classpath:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->rawClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    const/16 v2, 0xa

    const-string v3, "  "

    const/4 v4, 0x0

    const-string v5, "  <null>\n"

    if-nez v1, :cond_0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    array-length v1, v1

    move v6, v4

    :goto_0
    if-lt v6, v1, :cond_6

    :goto_1
    const-string v1, "Resolved classpath:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->resolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    if-nez v7, :cond_1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_1
    array-length v8, v7

    :goto_2
    if-lt v4, v8, :cond_5

    :goto_3
    const-string v1, "Resolved classpath status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->unresolvedEntryStatus:Lorg/eclipse/jdt/core/IJavaModelStatus;

    sget-object v2, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->NEED_RESOLUTION:Lorg/eclipse/jdt/core/IJavaModelStatus;

    if-ne v1, v2, :cond_2

    const-string v1, "NEED RESOLUTION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_2
    if-nez v1, :cond_3

    const-string v1, "<null>\n"

    goto :goto_4

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_5
    const-string v1, "Output location:\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->outputLocation:Lorg/eclipse/core/runtime/IPath;

    if-nez v1, :cond_4

    const-string v1, "<null>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :goto_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v1, v7, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->rawClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    aget-object v7, v7, v6

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public writeAndCacheClasspath(Lorg/eclipse/jdt/internal/core/JavaProject;[Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->writeAndCacheClasspath(Lorg/eclipse/jdt/internal/core/JavaProject;[Lorg/eclipse/jdt/core/IClasspathEntry;[Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;)Z

    move-result p1

    return p1
.end method

.method public writeAndCacheClasspath(Lorg/eclipse/jdt/internal/core/JavaProject;[Lorg/eclipse/jdt/core/IClasspathEntry;[Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->writtingRawClasspath:Z

    if-nez p3, :cond_0

    .line 2
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->referencedEntries:[Lorg/eclipse/jdt/core/IClasspathEntry;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 3
    :cond_0
    :goto_0
    invoke-virtual {p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/JavaProject;->writeFileEntries([Lorg/eclipse/jdt/core/IClasspathEntry;[Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 4
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->writtingRawClasspath:Z

    return v1

    .line 5
    :cond_1
    :try_start_1
    sget-object p1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    invoke-virtual {p0, p2, p3, p4, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->setRawClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;[Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaModelStatus;)Lorg/eclipse/jdt/internal/core/ClasspathChange;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->writtingRawClasspath:Z

    return v0

    :goto_1
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->writtingRawClasspath:Z

    .line 7
    throw p1
.end method
