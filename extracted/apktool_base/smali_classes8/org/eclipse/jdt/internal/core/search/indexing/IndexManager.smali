.class public Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;
.super Lorg/eclipse/jdt/internal/core/search/processing/JobManager;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;


# static fields
.field public static DEBUG:Z = false

.field private static final IS_MANAGING_PRODUCT_INDEXES_PROPERTY:Z

.field public static final MANAGE_PRODUCT_INDEXES_PROPERTY:Ljava/lang/String; = "jdt.core.manageProductIndexes"

.field public static final REBUILDING_STATE:Ljava/lang/Integer;

.field public static final REUSE_STATE:Ljava/lang/Integer;

.field public static final SAVED_STATE:Ljava/lang/Integer;

.field public static final UNKNOWN_STATE:Ljava/lang/Integer;

.field public static final UPDATING_STATE:Ljava/lang/Integer;


# instance fields
.field public indexLocations:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

.field private indexNamesMapFile:Ljava/io/File;

.field private indexStates:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

.field private indexes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

.field private javaLikeNamesChanged:Z

.field private javaPluginLocation:Lorg/eclipse/core/runtime/IPath;

.field private final nameRegistry:Lorg/eclipse/jdt/internal/core/search/indexing/IndexNamesRegistry;

.field private needToSave:Z

.field private participantIndexNamesFile:Ljava/io/File;

.field private participantUpdated:Z

.field private participantsContainers:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->SAVED_STATE:Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->UPDATING_STATE:Ljava/lang/Integer;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->UNKNOWN_STATE:Ljava/lang/Integer;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->REBUILDING_STATE:Ljava/lang/Integer;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->REUSE_STATE:Ljava/lang/Integer;

    const-string v1, "jdt.core.manageProductIndexes"

    invoke-static {v1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->IS_MANAGING_PRODUCT_INDEXES_PROPERTY:Z

    sput-boolean v0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;-><init>()V

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexLocations:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->needToSave:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->javaPluginLocation:Lorg/eclipse/core/runtime/IPath;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexStates:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    new-instance v2, Ljava/io/File;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getSavedIndexesDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "indexNamesMap.txt"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexNamesMapFile:Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getSavedIndexesDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "participantsIndexNames.txt"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->participantIndexNamesFile:Ljava/io/File;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->javaLikeNamesChanged:Z

    new-instance v2, Lorg/eclipse/jdt/internal/core/search/indexing/IndexNamesRegistry;

    new-instance v3, Ljava/io/File;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getSavedIndexesDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "savedIndexNames.txt"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getJavaPluginWorkingLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexNamesRegistry;-><init>(Ljava/io/File;Lorg/eclipse/core/runtime/IPath;)V

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->nameRegistry:Lorg/eclipse/jdt/internal/core/search/indexing/IndexNamesRegistry;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->participantsContainers:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->participantUpdated:Z

    return-void
.end method

.method private deleteIndexFiles(Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 10

    .line 6
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getSavedIndexesDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    array-length v1, v0

    invoke-static {p2, v1}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p2

    .line 8
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x1

    .line 9
    invoke-virtual {p2, v3}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    .line 10
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_2

    .line 11
    new-instance v3, Lorg/eclipse/jdt/internal/core/index/FileIndexLocation;

    aget-object v5, v0, v2

    invoke-direct {v3, v5}, Lorg/eclipse/jdt/internal/core/index/FileIndexLocation;-><init>(Ljava/io/File;)V

    invoke-virtual {p1, v3}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->includes(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v6, v3, -0x6

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v5, 0x1

    const-string v7, ".index"

    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 13
    sget-boolean v3, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-nez v3, :cond_3

    sget-boolean v3, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 14
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Deleting index file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    .line 15
    :cond_4
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getIndexStates()Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexStates:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexStates:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getSavedIndexesDirectory()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->nameRegistry:Lorg/eclipse/jdt/internal/core/search/indexing/IndexNamesRegistry;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexNamesRegistry;->read(Lorg/eclipse/core/runtime/IProgressMonitor;)[[C

    move-result-object v1

    if-eqz v1, :cond_4

    array-length v2, v1

    const/4 v3, 0x1

    :goto_0
    if-lt v3, v2, :cond_1

    goto :goto_1

    :cond_1
    aget-object v4, v1, v3

    array-length v5, v4

    if-lez v5, :cond_3

    new-instance v5, Lorg/eclipse/jdt/internal/core/index/FileIndexLocation;

    new-instance v6, Ljava/io/File;

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lorg/eclipse/jdt/internal/core/index/FileIndexLocation;-><init>(Ljava/io/File;)V

    sget-boolean v4, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Reading saved index file "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_2
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexStates:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    sget-object v6, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->SAVED_STATE:Ljava/lang/Integer;

    invoke-virtual {v4, v5, v6}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->writeJavaLikeNamesFile()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->javaLikeNamesChanged:Z

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->deleteIndexFiles()V

    :goto_1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->readIndexMap()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexStates:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    return-object v0
.end method

.method private getJavaPluginWorkingLocation()Lorg/eclipse/core/runtime/IPath;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->javaPluginLocation:Lorg/eclipse/core/runtime/IPath;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getPlugin()Lorg/eclipse/core/runtime/Plugin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/core/runtime/Plugin;->getStateLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->javaPluginLocation:Lorg/eclipse/core/runtime/IPath;

    return-object v0
.end method

.method private getParticipantsContainer(Lorg/eclipse/jdt/internal/core/index/IndexLocation;)Lorg/eclipse/core/runtime/IPath;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->participantsContainers:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->readParticipantsIndexNamesFile()V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->participantsContainers:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/core/runtime/IPath;

    return-object p1
.end method

.method private getRequest(Ljava/lang/Object;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/index/IndexLocation;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;Z)Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;
    .locals 0

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->isJrt(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;

    invoke-direct {p1, p2, p3, p0, p5}, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;-><init>(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/index/IndexLocation;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;Z)V

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/internal/core/search/indexing/AddJarFileToIndex;

    invoke-direct {p1, p2, p3, p0, p5}, Lorg/eclipse/jdt/internal/core/search/indexing/AddJarFileToIndex;-><init>(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/index/IndexLocation;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;Z)V

    :goto_0
    return-object p1
.end method

.method private getSavedIndexesDirectory()Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getJavaPluginWorkingLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private hasJavaLikeNamesChanged()Z
    .locals 9

    invoke-static {}, Lorg/eclipse/jdt/internal/core/util/Util;->getJavaLikeExtensions()[[C

    move-result-object v0

    array-length v1, v0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->readJavaLikeNamesFile()[[C

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v0, :cond_0

    if-eq v1, v4, :cond_0

    const-string v0, "No Java like names found and there is atleast one non-default javaLikeName"

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v0, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;Ljava/io/PrintStream;)V

    :cond_0
    if-eq v1, v4, :cond_1

    return v4

    :cond_1
    return v3

    :cond_2
    array-length v5, v2

    const-string v6, "Java like names have changed"

    if-eq v1, v5, :cond_4

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v6, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;Ljava/io/PrintStream;)V

    :cond_3
    return v4

    :cond_4
    if-le v1, v4, :cond_5

    new-array v5, v1, [[C

    invoke-static {v0, v3, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v5}, Lorg/eclipse/jdt/internal/core/util/Util;->sort([[C)V

    move-object v0, v5

    :cond_5
    move v5, v3

    :goto_0
    if-lt v5, v1, :cond_6

    return v3

    :cond_6
    aget-object v7, v0, v5

    aget-object v8, v2, v5

    invoke-static {v7, v8}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v7

    if-nez v7, :cond_8

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v0, :cond_7

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v6, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;Ljava/io/PrintStream;)V

    :cond_7
    return v4

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private isJrt(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "jrt-fs.jar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private readIndexMap()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexNamesMapFile:Ljava/io/File;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getFileCharContent(Ljava/io/File;Ljava/lang/String;)[C

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    const-string v1, "INDEX VERSION 1.131"

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_2

    :cond_0
    new-instance v3, Ljava/net/URL;

    new-instance v4, Ljava/lang/String;

    aget-object v5, v0, v2

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->createIndexLocation(Ljava/net/URL;)Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexLocations:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    new-instance v5, Lorg/eclipse/core/runtime/Path;

    new-instance v6, Ljava/lang/String;

    add-int/lit8 v7, v2, 0x1

    aget-object v7, v0, v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v5, v6}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v3}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexStates:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    sget-object v5, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->REUSE_STATE:Ljava/lang/Integer;

    invoke-virtual {v4, v3, v5}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :catch_0
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v0, :cond_2

    const-string v0, "Failed to read saved index file names"

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method private readJavaLikeNamesFile()[[C
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getJavaPluginWorkingLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "javaLikeNames.txt"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v2, v0}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getFileCharContent(Ljava/io/File;Ljava/lang/String;)[C

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_1

    const/16 v2, 0xa

    invoke-static {v2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v1, :cond_1

    const-string v1, "Failed to read javaLikeNames file"

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private readParticipantsIndexNamesFile()V
    .locals 9

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>(I)V

    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->participantIndexNamesFile:Ljava/io/File;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getFileCharContent(Ljava/io/File;Ljava/lang/String;)[C

    move-result-object v2

    array-length v3, v2

    if-lez v3, :cond_1

    const/16 v3, 0xa

    invoke-static {v3, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v2

    array-length v3, v2

    if-lt v3, v1, :cond_1

    const-string v1, "INDEX VERSION 1.131"

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    array-length v1, v2

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    move v4, v3

    :goto_0
    if-lt v4, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v5, Lorg/eclipse/jdt/internal/core/index/FileIndexLocation;

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/String;

    aget-object v8, v2, v4

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6, v3}, Lorg/eclipse/jdt/internal/core/index/FileIndexLocation;-><init>(Ljava/io/File;Z)V

    new-instance v6, Lorg/eclipse/core/runtime/Path;

    new-instance v7, Ljava/lang/String;

    add-int/lit8 v8, v4, 0x1

    aget-object v8, v2, v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v6, v7}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    :catch_0
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v1, :cond_1

    const-string v1, "Failed to read participant index file names"

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_1
    :goto_1
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->participantsContainers:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    return-void
.end method

.method private rebuildIndex(Lorg/eclipse/jdt/internal/core/index/IndexLocation;Lorg/eclipse/core/runtime/IPath;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->rebuildIndex(Lorg/eclipse/jdt/internal/core/index/IndexLocation;Lorg/eclipse/core/runtime/IPath;Z)V

    return-void
.end method

.method private rebuildIndex(Lorg/eclipse/jdt/internal/core/index/IndexLocation;Lorg/eclipse/core/runtime/IPath;Z)V
    .locals 7

    const/4 v0, 0x1

    .line 2
    invoke-static {p2, v0}, Lorg/eclipse/jdt/internal/core/JavaModel;->getTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 3
    :cond_0
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-> request to rebuild index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    .line 5
    :cond_1
    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->REBUILDING_STATE:Ljava/lang/Integer;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->updateIndexState(Lorg/eclipse/jdt/internal/core/index/IndexLocation;Ljava/lang/Integer;)V

    .line 6
    instance-of p1, v2, Lorg/eclipse/core/resources/IProject;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 7
    check-cast v2, Lorg/eclipse/core/resources/IProject;

    .line 8
    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/JavaProject;->hasJavaNature(Lorg/eclipse/core/resources/IProject;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 9
    new-instance v0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject;

    invoke-direct {v0, v2, p0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject;-><init>(Lorg/eclipse/core/resources/IProject;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;)V

    goto :goto_1

    .line 10
    :cond_2
    instance-of p1, v2, Lorg/eclipse/core/resources/IFolder;

    if-eqz p1, :cond_3

    .line 11
    new-instance v0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder;

    check-cast v2, Lorg/eclipse/core/resources/IFolder;

    invoke-direct {v0, v2, p0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder;-><init>(Lorg/eclipse/core/resources/IContainer;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;)V

    goto :goto_1

    .line 12
    :cond_3
    instance-of p1, v2, Lorg/eclipse/core/resources/IFile;

    if-eqz p1, :cond_5

    .line 13
    check-cast v2, Lorg/eclipse/core/resources/IFile;

    invoke-interface {v2}, Lorg/eclipse/core/resources/IFile;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->isJrt(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 14
    new-instance p1, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;

    invoke-direct {p1, v2, v0, p0, p3}, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;-><init>(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/jdt/internal/core/index/IndexLocation;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;Z)V

    :goto_0
    move-object v0, p1

    goto :goto_1

    .line 15
    :cond_4
    new-instance p1, Lorg/eclipse/jdt/internal/core/search/indexing/AddJarFileToIndex;

    invoke-direct {p1, v2, v0, p0, p3}, Lorg/eclipse/jdt/internal/core/search/indexing/AddJarFileToIndex;-><init>(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/jdt/internal/core/index/IndexLocation;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;Z)V

    goto :goto_0

    .line 16
    :cond_5
    instance-of p1, v2, Ljava/io/File;

    if-eqz p1, :cond_6

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v5, p0

    move v6, p3

    .line 17
    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getRequest(Ljava/lang/Object;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/index/IndexLocation;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;Z)Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;

    move-result-object v0

    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    .line 18
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->request(Lorg/eclipse/jdt/internal/core/search/processing/IJob;)V

    :cond_7
    return-void
.end method

.method private declared-synchronized removeIndexesState([Lorg/eclipse/jdt/internal/core/index/IndexLocation;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getIndexStates()Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    array-length v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_1

    if-nez v2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->writeSavedIndexNamesFile()V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->writeIndexMapFile()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :try_start_2
    aget-object v3, p1, v1

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexStates:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    sget-boolean v2, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-> index state updated to: ? for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_3
    const/4 v2, 0x1

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private declared-synchronized updateIndexState(Lorg/eclipse/jdt/internal/core/index/IndexLocation;Ljava/lang/Integer;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_a

    :try_start_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getIndexStates()Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexStates:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexStates:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexStates:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexStates:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->writeSavedIndexNamesFile()V

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v0, :cond_9

    if-nez p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "-> index state removed for: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v0, "?"

    sget-object v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->SAVED_STATE:Ljava/lang/Integer;

    if-ne p2, v1, :cond_4

    const-string v0, "SAVED"

    goto :goto_1

    :cond_4
    sget-object v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->UPDATING_STATE:Ljava/lang/Integer;

    if-ne p2, v1, :cond_5

    const-string v0, "UPDATING"

    goto :goto_1

    :cond_5
    sget-object v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->UNKNOWN_STATE:Ljava/lang/Integer;

    if-ne p2, v1, :cond_6

    const-string v0, "UNKNOWN"

    goto :goto_1

    :cond_6
    sget-object v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->REBUILDING_STATE:Ljava/lang/Integer;

    if-ne p2, v1, :cond_7

    const-string v0, "REBUILDING"

    goto :goto_1

    :cond_7
    sget-object v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->REUSE_STATE:Ljava/lang/Integer;

    if-ne p2, v1, :cond_8

    const-string v0, "REUSE"

    :cond_8
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "-> index state updated to: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_9
    :goto_2
    monitor-exit p0

    return-void

    :cond_a
    :try_start_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private writeIndexMapFile()V
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexNamesMapFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "INDEX VERSION 1.131"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(I)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexStates:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->keyTable:[Ljava/lang/Object;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->valueTable:[Ljava/lang/Object;

    array-length v4, v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v4, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :cond_0
    :try_start_3
    aget-object v6, v3, v5

    check-cast v6, Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    if-eqz v6, :cond_1

    aget-object v7, v2, v5

    sget-object v8, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->REUSE_STATE:Ljava/lang/Integer;

    if-ne v7, v8, :cond_1

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexLocations:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v7, v6}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->keyForValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/core/runtime/IPath;

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(I)V

    invoke-interface {v7}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_4

    :catch_1
    :goto_2
    :try_start_4
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v1, :cond_2

    const-string v1, "Failed to write saved index file names"

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;Ljava/io/PrintStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    if-eqz v0, :cond_3

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :cond_3
    :goto_3
    return-void

    :goto_4
    if-eqz v1, :cond_4

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    :cond_4
    throw v0
.end method

.method private writeJavaLikeNamesFile()V
    .locals 8

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getJavaPluginWorkingLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/util/Util;->getJavaLikeExtensions()[[C

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v3, v5, :cond_0

    new-array v5, v3, [[C

    invoke-static {v2, v4, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v5}, Lorg/eclipse/jdt/internal/core/util/Util;->sort([[C)V

    move-object v2, v5

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_0
    :goto_0
    new-instance v5, Ljava/io/File;

    const-string v6, "javaLikeNames.txt"

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    add-int/lit8 v1, v3, -0x1

    if-lt v4, v1, :cond_2

    if-lez v3, :cond_1

    :try_start_1
    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write([C)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_4

    :cond_1
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :cond_2
    :try_start_3
    aget-object v1, v2, v4

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write([C)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-object v1, v0

    :catch_1
    :try_start_4
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v0, :cond_3

    const-string v0, "Failed to write javaLikeNames file"

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v0, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;Ljava/io/PrintStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :cond_4
    :goto_3
    return-void

    :goto_4
    if-eqz v1, :cond_5

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    :cond_5
    throw v0
.end method

.method private writeParticipantsIndexNamesFile()V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->participantIndexNamesFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "INDEX VERSION 1.131"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(I)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->participantsContainers:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->keyTable:[Ljava/lang/Object;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->valueTable:[Ljava/lang/Object;

    array-length v4, v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v4, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :cond_0
    :try_start_3
    aget-object v6, v3, v5

    check-cast v6, Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->getIndexFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(I)V

    aget-object v6, v2, v5

    check-cast v6, Lorg/eclipse/core/runtime/IPath;

    invoke-interface {v6}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_4

    :catch_1
    :goto_2
    :try_start_4
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v1, :cond_2

    const-string v1, "Failed to write participant index file names"

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;Ljava/io/PrintStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    if-eqz v0, :cond_3

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :cond_3
    :goto_3
    return-void

    :goto_4
    if-eqz v1, :cond_4

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    :cond_4
    throw v0
.end method

.method private writeSavedIndexNamesFile()V
    .locals 9

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexStates:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->keyTable:[Ljava/lang/Object;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->valueTable:[Ljava/lang/Object;

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-lt v4, v2, :cond_2

    new-array v6, v5, [[C

    array-length v7, v0

    move v2, v3

    :goto_1
    if-lt v3, v7, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->nameRegistry:Lorg/eclipse/jdt/internal/core/search/indexing/IndexNamesRegistry;

    invoke-virtual {v0, v6}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexNamesRegistry;->write([[C)V

    return-void

    :cond_0
    aget-object v4, v1, v3

    check-cast v4, Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    if-eqz v4, :cond_1

    aget-object v5, v0, v3

    sget-object v8, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->SAVED_STATE:Ljava/lang/Integer;

    if-ne v5, v8, :cond_1

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->fileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    aput-object v4, v6, v2

    move v2, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    aget-object v6, v1, v4

    check-cast v6, Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    if-eqz v6, :cond_3

    aget-object v6, v0, v4

    sget-object v7, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->SAVED_STATE:Ljava/lang/Integer;

    if-ne v6, v7, :cond_3

    add-int/lit8 v5, v5, 0x1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized aboutToUpdateIndex(Lorg/eclipse/core/runtime/IPath;Ljava/lang/Integer;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->computeIndexLocation(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    move-result-object v0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getIndexStates()Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->UNKNOWN_STATE:Ljava/lang/Integer;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    check-cast v1, Ljava/lang/Integer;

    :goto_0
    sget-object v2, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->REBUILDING_STATE:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v2, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p2, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v1

    if-lez v1, :cond_2

    invoke-direct {p0, v0, p2}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->updateIndexState(Lorg/eclipse/jdt/internal/core/index/IndexLocation;Ljava/lang/Integer;)V

    goto :goto_1

    :cond_2
    if-gez v1, :cond_3

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_3

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->rebuildIndex(Lorg/eclipse/jdt/internal/core/index/IndexLocation;Lorg/eclipse/core/runtime/IPath;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public addBinary(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/core/runtime/IPath;)V
    .locals 2

    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getPlugin()Lorg/eclipse/core/runtime/Plugin;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/eclipse/jdt/core/search/SearchEngine;->getDefaultSearchParticipant()Lorg/eclipse/jdt/core/search/SearchParticipant;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/core/resources/IFile;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/search/SearchParticipant;->getDocument(Ljava/lang/String;)Lorg/eclipse/jdt/core/search/SearchDocument;

    move-result-object p1

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->computeIndexLocation(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->scheduleDocumentIndexing(Lorg/eclipse/jdt/core/search/SearchDocument;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/index/IndexLocation;Lorg/eclipse/jdt/core/search/SearchParticipant;)V

    return-void
.end method

.method public declared-synchronized addIndex(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/index/IndexLocation;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getIndexStates()Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->REUSE_STATE:Ljava/lang/Integer;

    invoke-virtual {v0, p2, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexLocations:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getIndex(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/index/IndexLocation;ZZ)Lorg/eclipse/jdt/internal/core/index/Index;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->close()V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexLocations:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->writeIndexMapFile()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public addSource(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/compiler/SourceElementParser;)V
    .locals 1

    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getPlugin()Lorg/eclipse/core/runtime/Plugin;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/eclipse/jdt/core/search/SearchEngine;->getDefaultSearchParticipant()Lorg/eclipse/jdt/core/search/SearchParticipant;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/core/resources/IFile;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/search/SearchParticipant;->getDocument(Ljava/lang/String;)Lorg/eclipse/jdt/core/search/SearchDocument;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/core/search/SearchDocument;->setParser(Lorg/eclipse/jdt/internal/compiler/SourceElementParser;)V

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->computeIndexLocation(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->scheduleDocumentIndexing(Lorg/eclipse/jdt/core/search/SearchDocument;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/index/IndexLocation;Lorg/eclipse/jdt/core/search/SearchParticipant;)V

    return-void
.end method

.method public cleanUpIndexes()V
    .locals 9

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;-><init>()V

    invoke-static {}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->createWorkspaceScope()Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    move-result-object v1

    new-instance v2, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;

    invoke-static {}, Lorg/eclipse/jdt/core/search/SearchEngine;->getDefaultSearchParticipant()Lorg/eclipse/jdt/core/search/SearchParticipant;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v1, v4}, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;-><init>(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/internal/core/search/IndexQueryRequestor;)V

    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;->getIndexes(Lorg/eclipse/core/runtime/IProgressMonitor;)[Lorg/eclipse/jdt/internal/core/index/Index;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v5, v3

    :goto_0
    if-lt v5, v2, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexStates:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->keyTable:[Ljava/lang/Object;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->elementSize:I

    new-array v1, v1, [Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    array-length v5, v2

    move v6, v3

    :goto_1
    if-lt v3, v5, :cond_0

    if-lez v6, :cond_2

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->removeIndexesState([Lorg/eclipse/jdt/internal/core/index/IndexLocation;)V

    goto :goto_2

    :cond_0
    aget-object v7, v2, v3

    check-cast v7, Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    if-eqz v7, :cond_1

    invoke-virtual {v0, v7}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->includes(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    add-int/lit8 v8, v6, 0x1

    aput-object v7, v1, v6

    move v6, v8

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-direct {p0, v0, v4}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->deleteIndexFiles(Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void

    :cond_3
    aget-object v6, v1, v5

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/index/Index;->getIndexLocation()Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->add(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public declared-synchronized computeIndexLocation(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/internal/core/index/IndexLocation;
    .locals 5

    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexLocations:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    if-nez v0, :cond_1

    .line 13
    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v0

    .line 14
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".index"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 17
    sget-boolean v2, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v2, :cond_0

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-> index name for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getIndexStates()Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    move-result-object v0

    new-instance v2, Lorg/eclipse/jdt/internal/core/index/FileIndexLocation;

    new-instance v3, Ljava/io/File;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getSavedIndexesDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/eclipse/jdt/internal/core/index/FileIndexLocation;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    .line 20
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexLocations:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v1, p1, v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :cond_1
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized computeIndexLocation(Lorg/eclipse/core/runtime/IPath;Ljava/net/URL;)Lorg/eclipse/jdt/internal/core/index/IndexLocation;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexLocations:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 2
    invoke-static {p2}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->createIndexLocation(Ljava/net/URL;)Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    move-result-object p2

    .line 3
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getIndexStates()Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    .line 4
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexLocations:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->getUrl()Ljava/net/URL;

    move-result-object v1

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p2, v1}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->removeIndex(Lorg/eclipse/core/runtime/IPath;)V

    .line 8
    invoke-static {p2}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->createIndexLocation(Ljava/net/URL;)Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    move-result-object p2

    .line 9
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getIndexStates()Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    .line 10
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexLocations:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final deleteIndexFiles()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->deleteIndexFiles(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public deleteIndexFiles(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 1

    .line 2
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3
    const-string v0, "Deleting index files"

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->nameRegistry:Lorg/eclipse/jdt/internal/core/search/indexing/IndexNamesRegistry;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexNamesRegistry;->delete()V

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->deleteIndexFiles(Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public declared-synchronized ensureIndexExists(Lorg/eclipse/jdt/internal/core/index/IndexLocation;Lorg/eclipse/core/runtime/IPath;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getIndexStates()Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->REBUILDING_STATE:Ljava/lang/Integer;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->updateIndexState(Lorg/eclipse/jdt/internal/core/index/IndexLocation;Ljava/lang/Integer;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getIndex(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/index/IndexLocation;ZZ)Lorg/eclipse/jdt/internal/core/index/Index;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getIndex(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/index/IndexLocation;ZZ)Lorg/eclipse/jdt/internal/core/index/Index;
    .locals 5

    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getIndex(Lorg/eclipse/jdt/internal/core/index/IndexLocation;)Lorg/eclipse/jdt/internal/core/index/Index;

    move-result-object v0

    if-nez v0, :cond_b

    .line 5
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getIndexStates()Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 6
    sget-object v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->UNKNOWN_STATE:Ljava/lang/Integer;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    check-cast v1, Ljava/lang/Integer;

    .line 7
    :goto_0
    sget-object v2, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->UNKNOWN_STATE:Ljava/lang/Integer;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 8
    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->rebuildIndex(Lorg/eclipse/jdt/internal/core/index/IndexLocation;Lorg/eclipse/core/runtime/IPath;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-object v3

    .line 10
    :cond_1
    :try_start_1
    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->getDevice()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz p3, :cond_8

    .line 11
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->exists()Z

    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x1

    if-eqz p3, :cond_4

    .line 12
    :try_start_2
    new-instance p3, Lorg/eclipse/jdt/internal/core/index/Index;

    invoke-direct {p3, p2, v2, v4}, Lorg/eclipse/jdt/internal/core/index/Index;-><init>(Lorg/eclipse/jdt/internal/core/index/IndexLocation;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    :try_start_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, p2, p3}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14
    monitor-exit p0

    return-object p3

    :catch_0
    move-object v0, p3

    .line 15
    :catch_1
    :try_start_4
    sget-object p3, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->REBUILDING_STATE:Ljava/lang/Integer;

    if-eq v1, p3, :cond_4

    sget-object p3, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->REUSE_STATE:Ljava/lang/Integer;

    if-eq v1, p3, :cond_4

    .line 16
    sget-boolean p3, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz p3, :cond_3

    .line 17
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "-> cannot reuse existing index: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " path: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    .line 18
    :cond_3
    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->rebuildIndex(Lorg/eclipse/jdt/internal/core/index/IndexLocation;Lorg/eclipse/core/runtime/IPath;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 19
    monitor-exit p0

    return-object v3

    .line 20
    :cond_4
    :try_start_5
    sget-object p3, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->SAVED_STATE:Ljava/lang/Integer;

    if-ne v1, p3, :cond_5

    .line 21
    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->rebuildIndex(Lorg/eclipse/jdt/internal/core/index/IndexLocation;Lorg/eclipse/core/runtime/IPath;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 22
    monitor-exit p0

    return-object v3

    .line 23
    :cond_5
    :try_start_6
    sget-object p3, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->REUSE_STATE:Ljava/lang/Integer;

    if-ne v1, p3, :cond_8

    .line 24
    sget-boolean p3, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz p3, :cond_6

    .line 25
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "-> cannot reuse given index: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " path: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    .line 26
    :cond_6
    sget-boolean p3, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->IS_MANAGING_PRODUCT_INDEXES_PROPERTY:Z

    if-nez p3, :cond_7

    .line 27
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexLocations:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {p2, p1, v3}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->computeIndexLocation(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    move-result-object p2

    .line 29
    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->rebuildIndex(Lorg/eclipse/jdt/internal/core/index/IndexLocation;Lorg/eclipse/core/runtime/IPath;)V

    goto :goto_2

    .line 30
    :cond_7
    invoke-direct {p0, p2, p1, v4}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->rebuildIndex(Lorg/eclipse/jdt/internal/core/index/IndexLocation;Lorg/eclipse/core/runtime/IPath;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 31
    :goto_2
    monitor-exit p0

    return-object v3

    :cond_8
    if-eqz p4, :cond_b

    .line 32
    :try_start_7
    sget-boolean p1, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz p1, :cond_9

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "-> create empty index: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " path: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    .line 34
    :cond_9
    new-instance p1, Lorg/eclipse/jdt/internal/core/index/Index;

    const/4 p3, 0x0

    invoke-direct {p1, p2, v2, p3}, Lorg/eclipse/jdt/internal/core/index/Index;-><init>(Lorg/eclipse/jdt/internal/core/index/IndexLocation;Ljava/lang/String;Z)V

    .line 35
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {p3, p2, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 36
    monitor-exit p0

    return-object p1

    .line 37
    :catch_2
    :try_start_8
    sget-boolean p1, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz p1, :cond_a

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "-> unable to create empty index: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " path: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 39
    :cond_a
    monitor-exit p0

    return-object v3

    .line 40
    :cond_b
    monitor-exit p0

    return-object v0

    :goto_3
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw p1
.end method

.method public declared-synchronized getIndex(Lorg/eclipse/core/runtime/IPath;ZZ)Lorg/eclipse/jdt/internal/core/index/Index;
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->computeIndexLocation(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    move-result-object v0

    .line 3
    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getIndex(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/index/IndexLocation;ZZ)Lorg/eclipse/jdt/internal/core/index/Index;

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

.method public declared-synchronized getIndex(Lorg/eclipse/jdt/internal/core/index/IndexLocation;)Lorg/eclipse/jdt/internal/core/index/Index;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/index/Index;
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

.method public declared-synchronized getIndexForUpdate(Lorg/eclipse/core/runtime/IPath;ZZ)Lorg/eclipse/jdt/internal/core/index/Index;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->computeIndexLocation(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    move-result-object v0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getIndexStates()Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->REBUILDING_STATE:Ljava/lang/Integer;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getIndex(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/index/IndexLocation;ZZ)Lorg/eclipse/jdt/internal/core/index/Index;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getIndexes([Lorg/eclipse/jdt/internal/core/index/IndexLocation;Lorg/eclipse/core/runtime/IProgressMonitor;)[Lorg/eclipse/jdt/internal/core/index/Index;
    .locals 10

    array-length v0, p1

    new-array v1, v0, [Lorg/eclipse/jdt/internal/core/index/Index;

    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->javaLikeNamesChanged:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->hasJavaLikeNamesChanged()Z

    move-result v2

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->javaLikeNamesChanged:Z

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-lt v3, v0, :cond_3

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->javaLikeNamesChanged:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->writeJavaLikeNamesFile()V

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->javaLikeNamesChanged:Z

    :cond_1
    if-ge v4, v0, :cond_2

    new-array p1, v4, [Lorg/eclipse/jdt/internal/core/index/Index;

    invoke-static {v1, v2, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, p1

    :cond_2
    return-object v1

    :cond_3
    if-eqz p2, :cond_5

    invoke-interface {p2}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {p1}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    throw p1

    :cond_5
    :goto_1
    aget-object v5, p1, v3

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getIndex(Lorg/eclipse/jdt/internal/core/index/IndexLocation;)Lorg/eclipse/jdt/internal/core/index/Index;

    move-result-object v6

    if-nez v6, :cond_9

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexLocations:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v7, v5}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->keyForValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/core/runtime/IPath;

    const/4 v8, 0x1

    if-eqz v7, :cond_8

    invoke-virtual {p0, v7, v5, v8, v2}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getIndex(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/index/IndexLocation;ZZ)Lorg/eclipse/jdt/internal/core/index/Index;

    move-result-object v6

    if-eqz v6, :cond_9

    iget-boolean v8, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->javaLikeNamesChanged:Z

    if-eqz v8, :cond_9

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/index/Index;->isIndexForJar()Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/index/Index;->getIndexFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_7

    sget-boolean v8, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->DEBUG:Z

    if-eqz v8, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Change in javaLikeNames - removing index file for "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_7
    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v5, v7}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->rebuildIndex(Lorg/eclipse/jdt/internal/core/index/IndexLocation;Lorg/eclipse/core/runtime/IPath;)V

    move-object v6, v8

    goto :goto_2

    :cond_8
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->isParticipantIndex()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->exists()Z

    move-result v7

    if-eqz v7, :cond_9

    :try_start_0
    invoke-direct {p0, v5}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getParticipantsContainer(Lorg/eclipse/jdt/internal/core/index/IndexLocation;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v7

    if-eqz v7, :cond_9

    new-instance v9, Lorg/eclipse/jdt/internal/core/index/Index;

    invoke-interface {v7}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v5, v7, v8}, Lorg/eclipse/jdt/internal/core/index/Index;-><init>(Lorg/eclipse/jdt/internal/core/index/IndexLocation;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v6, v5, v9}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-object v6, v9

    :catch_1
    :cond_9
    :goto_2
    if-eqz v6, :cond_a

    add-int/lit8 v5, v4, 0x1

    aput-object v6, v1, v4

    move v4, v5

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method public getSourceElementParser(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;)Lorg/eclipse/jdt/internal/compiler/SourceElementParser;
    .locals 10

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/eclipse/jdt/core/IJavaProject;->getOptions(Z)Ljava/util/Map;

    move-result-object p1

    const-string v1, "org.eclipse.jdt.core.compiler.taskTags"

    const-string v2, ""

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexingParser;

    new-instance v5, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v5, v2}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;-><init>(Ljava/util/Locale;)V

    new-instance v6, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    invoke-direct {v6, p1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;-><init>(Ljava/util/Map;)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v7, 0x1

    move-object v3, v1

    move-object v4, p2

    invoke-direct/range {v3 .. v9}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexingParser;-><init>(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;ZZZ)V

    iput-boolean v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->reportOnlyOneSyntaxError:Z

    iget-object p1, v1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadocParser:Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;

    iput-boolean v0, p1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->checkDocComment:Z

    const/4 p2, 0x0

    iput-boolean p2, p1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    return-object v1
.end method

.method public indexAll(Lorg/eclipse/core/resources/IProject;)V
    .locals 5

    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getPlugin()Lorg/eclipse/core/runtime/Plugin;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->disable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModel()Lorg/eclipse/jdt/internal/core/JavaModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaModel;->getJavaProject(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_1

    goto :goto_2

    :cond_1
    aget-object v2, v0, v1

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    check-cast v2, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getLibraryIndexLocation()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {p0, v3, p1, v2}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexLibrary(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/resources/IProject;Ljava/net/URL;)V
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :goto_2
    :try_start_2
    new-instance v0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject;

    invoke-direct {v0, p1, p0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject;-><init>(Lorg/eclipse/core/resources/IProject;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->isJobWaiting(Lorg/eclipse/jdt/internal/core/search/processing/IJob;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->request(Lorg/eclipse/jdt/internal/core/search/processing/IJob;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->enable()V

    return-void

    :goto_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->enable()V

    throw p1
.end method

.method public indexDocument(Lorg/eclipse/jdt/core/search/SearchDocument;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/internal/core/index/Index;Lorg/eclipse/core/runtime/IPath;)V
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/core/search/SearchDocument;->setIndex(Lorg/eclipse/jdt/internal/core/index/Index;)V

    invoke-virtual {p2, p1, p4}, Lorg/eclipse/jdt/core/search/SearchParticipant;->indexDocument(Lorg/eclipse/jdt/core/search/SearchDocument;Lorg/eclipse/core/runtime/IPath;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/core/search/SearchDocument;->setIndex(Lorg/eclipse/jdt/internal/core/index/Index;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/core/search/SearchDocument;->setIndex(Lorg/eclipse/jdt/internal/core/index/Index;)V

    throw p2
.end method

.method public indexLibrary(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/resources/IProject;Ljava/net/URL;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexLibrary(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/resources/IProject;Ljava/net/URL;Z)V

    return-void
.end method

.method public indexLibrary(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/resources/IProject;Ljava/net/URL;Z)V
    .locals 7

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 2
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->IS_MANAGING_PRODUCT_INDEXES_PROPERTY:Z

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->computeIndexLocation(Lorg/eclipse/core/runtime/IPath;Ljava/net/URL;)Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    move-result-object p3

    if-nez p4, :cond_0

    .line 4
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    move v6, p2

    move-object v4, p3

    goto :goto_1

    :cond_0
    move-object v4, p3

    move v6, p4

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {p3}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->createIndexLocation(Ljava/net/URL;)Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    move-result-object p3

    :goto_0
    move-object v4, p3

    move v6, v0

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    goto :goto_0

    .line 6
    :goto_1
    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getPlugin()Lorg/eclipse/core/runtime/Plugin;

    move-result-object p3

    if-nez p3, :cond_3

    return-void

    .line 7
    :cond_3
    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/JavaModel;->getTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object v2

    .line 8
    instance-of p2, v2, Lorg/eclipse/core/resources/IFile;

    if-eqz p2, :cond_5

    .line 9
    check-cast v2, Lorg/eclipse/core/resources/IFile;

    invoke-interface {v2}, Lorg/eclipse/core/resources/IFile;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->isJrt(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    new-instance p1, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;

    invoke-direct {p1, v2, v4, p0, v6}, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;-><init>(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/jdt/internal/core/index/IndexLocation;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;Z)V

    goto :goto_2

    .line 11
    :cond_4
    new-instance p1, Lorg/eclipse/jdt/internal/core/search/indexing/AddJarFileToIndex;

    invoke-direct {p1, v2, v4, p0, v6}, Lorg/eclipse/jdt/internal/core/search/indexing/AddJarFileToIndex;-><init>(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/jdt/internal/core/index/IndexLocation;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;Z)V

    goto :goto_2

    .line 12
    :cond_5
    instance-of p2, v2, Ljava/io/File;

    if-eqz p2, :cond_6

    move-object v1, p0

    move-object v3, p1

    move-object v5, p0

    .line 13
    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getRequest(Ljava/lang/Object;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/index/IndexLocation;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;Z)Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;

    move-result-object p1

    goto :goto_2

    .line 14
    :cond_6
    instance-of p1, v2, Lorg/eclipse/core/resources/IContainer;

    if-eqz p1, :cond_7

    .line 15
    new-instance p1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder;

    check-cast v2, Lorg/eclipse/core/resources/IContainer;

    invoke-direct {p1, v2, p0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder;-><init>(Lorg/eclipse/core/resources/IContainer;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;)V

    .line 16
    :goto_2
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->isJobWaiting(Lorg/eclipse/jdt/internal/core/search/processing/IJob;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 17
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->request(Lorg/eclipse/jdt/internal/core/search/processing/IJob;)V

    :cond_7
    return-void
.end method

.method public indexResolvedDocument(Lorg/eclipse/jdt/core/search/SearchDocument;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/internal/core/index/Index;Lorg/eclipse/core/runtime/IPath;)V
    .locals 2

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/core/search/SearchParticipant;->resolveDocument(Lorg/eclipse/jdt/core/search/SearchDocument;)V

    iget-object v0, p3, Lorg/eclipse/jdt/internal/core/index/Index;->monitor:Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->enterWrite()V

    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/core/search/SearchDocument;->setIndex(Lorg/eclipse/jdt/internal/core/index/Index;)V

    invoke-virtual {p2, p1, p4}, Lorg/eclipse/jdt/core/search/SearchParticipant;->indexResolvedDocument(Lorg/eclipse/jdt/core/search/SearchDocument;Lorg/eclipse/core/runtime/IPath;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/core/search/SearchDocument;->setIndex(Lorg/eclipse/jdt/internal/core/index/Index;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitWrite()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/core/search/SearchDocument;->setIndex(Lorg/eclipse/jdt/internal/core/index/Index;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitWrite()V

    throw p2
.end method

.method public indexSourceFolder(Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/core/runtime/IPath;[[C[[C)V
    .locals 6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v2

    iget p1, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->jobEnd:I

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->jobStart:I

    if-le p1, v0, :cond_0

    new-instance p1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject;

    invoke-direct {p1, v2, p0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject;-><init>(Lorg/eclipse/core/resources/IProject;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;)V

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->isJobWaiting(Lorg/eclipse/jdt/internal/core/search/processing/IJob;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex;

    move-object v0, p1

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex;-><init>(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/resources/IProject;[[C[[CLorg/eclipse/jdt/internal/core/search/indexing/IndexManager;)V

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->request(Lorg/eclipse/jdt/internal/core/search/processing/IJob;)V

    return-void
.end method

.method public declared-synchronized jobWasCancelled(Lorg/eclipse/core/runtime/IPath;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->computeIndexLocation(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getIndex(Lorg/eclipse/jdt/internal/core/index/IndexLocation;)Lorg/eclipse/jdt/internal/core/index/Index;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/index/Index;->monitor:Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->UNKNOWN_STATE:Ljava/lang/Integer;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->updateIndexState(Lorg/eclipse/jdt/internal/core/index/IndexLocation;Ljava/lang/Integer;)V
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

.method public declared-synchronized moveToNextJob()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->needToSave:Z

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->moveToNextJob()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public notifyIdle(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->needToSave:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->saveIndexes()V

    :cond_0
    return-void
.end method

.method public processName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->process_name:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized recreateIndex(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/internal/core/index/Index;
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->getDevice()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->computeIndexLocation(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getIndex(Lorg/eclipse/jdt/internal/core/index/IndexLocation;)Lorg/eclipse/jdt/internal/core/index/Index;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/index/Index;->monitor:Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;

    :goto_1
    sget-boolean v3, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "-> recreating index: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " for path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_2
    new-instance v3, Lorg/eclipse/jdt/internal/core/index/Index;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v0, v4}, Lorg/eclipse/jdt/internal/core/index/Index;-><init>(Lorg/eclipse/jdt/internal/core/index/IndexLocation;Ljava/lang/String;Z)V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v4, p1, v3}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, v3, Lorg/eclipse/jdt/internal/core/index/Index;->monitor:Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v3

    :goto_3
    :try_start_2
    sget-boolean v2, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-> failed to recreate index for path: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    monitor-exit p0

    return-object v1

    :goto_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public remove(Ljava/lang/String;Lorg/eclipse/core/runtime/IPath;)V
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/search/indexing/RemoveFromIndex;

    invoke-direct {v0, p1, p2, p0}, Lorg/eclipse/jdt/internal/core/search/indexing/RemoveFromIndex;-><init>(Ljava/lang/String;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->request(Lorg/eclipse/jdt/internal/core/search/processing/IJob;)V

    return-void
.end method

.method public declared-synchronized removeIndex(Lorg/eclipse/core/runtime/IPath;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->DEBUG:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "removing index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->computeIndexLocation(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getIndex(Lorg/eclipse/jdt/internal/core/index/IndexLocation;)Lorg/eclipse/jdt/internal/core/index/Index;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iput-object v2, v1, Lorg/eclipse/jdt/internal/core/index/Index;->monitor:Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/index/Index;->getIndexFile()Ljava/io/File;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    if-nez v1, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->getIndexFile()Ljava/io/File;

    move-result-object v1

    :cond_3
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexStates:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->REUSE_STATE:Ljava/lang/Integer;

    if-ne v3, v4, :cond_4

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->close()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexLocations:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v1, p1, v2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    sget-boolean v3, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->DEBUG:Z

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "removing index file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_6
    :goto_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->IS_MANAGING_PRODUCT_INDEXES_PROPERTY:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexLocations:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-direct {p0, v0, v2}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->updateIndexState(Lorg/eclipse/jdt/internal/core/index/IndexLocation;Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized removeIndexFamily(Lorg/eclipse/core/runtime/IPath;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexLocations:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->keyTable:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    :goto_0
    if-lt v4, v1, :cond_2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_1
    if-lt v2, p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->removeIndex(Lorg/eclipse/core/runtime/IPath;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    :goto_2
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    aget-object v5, v0, v4

    check-cast v5, Lorg/eclipse/core/runtime/IPath;

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {p1, v5}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v3, :cond_4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :goto_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized removeIndexPath(Lorg/eclipse/core/runtime/IPath;)V
    .locals 12

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->DEBUG:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "removing index path "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->keyTable:[Ljava/lang/Object;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->valueTable:[Ljava/lang/Object;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->elementSize:I

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v7, v4

    move v6, v5

    move v8, v6

    :goto_1
    if-lt v6, v3, :cond_6

    if-eqz v7, :cond_5

    move p1, v5

    :goto_2
    if-lt p1, v8, :cond_4

    invoke-direct {p0, v7}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->removeIndexesState([Lorg/eclipse/jdt/internal/core/index/IndexLocation;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->participantsContainers:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    if-eqz p1, :cond_5

    move p1, v5

    :goto_3
    if-lt v5, v8, :cond_2

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->writeParticipantsIndexNamesFile()V

    goto :goto_4

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->participantsContainers:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    aget-object v1, v7, v5

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->participantsContainers:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    aget-object v0, v7, v5

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    aget-object v1, v7, p1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    :goto_4
    monitor-exit p0

    return-void

    :cond_6
    :try_start_1
    aget-object v9, v1, v6

    check-cast v9, Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    if-nez v9, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v9, p1}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->startsWith(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v10

    if-eqz v10, :cond_b

    aget-object v10, v2, v6

    check-cast v10, Lorg/eclipse/jdt/internal/core/index/Index;

    iput-object v4, v10, Lorg/eclipse/jdt/internal/core/index/Index;->monitor:Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;

    if-nez v7, :cond_8

    new-array v7, v0, [Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    :cond_8
    add-int/lit8 v10, v8, 0x1

    aput-object v9, v7, v8

    iget-object v8, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexStates:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v8, v9}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v11, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->REUSE_STATE:Ljava/lang/Integer;

    if-ne v8, v11, :cond_9

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->close()V

    goto :goto_5

    :cond_9
    sget-boolean v8, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->DEBUG:Z

    if-eqz v8, :cond_a

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "removing index file "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->delete()Z

    :goto_5
    move v8, v10

    goto :goto_6

    :cond_b
    add-int/lit8 v0, v0, -0x1

    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :goto_7
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public removeSourceFolderFromIndex(Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/core/runtime/IPath;[[C[[C)V
    .locals 6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v4

    iget p1, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->jobEnd:I

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->jobStart:I

    if-le p1, v0, :cond_0

    new-instance p1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject;

    invoke-direct {p1, v4, p0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject;-><init>(Lorg/eclipse/core/resources/IProject;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;)V

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->isJobWaiting(Lorg/eclipse/jdt/internal/core/search/processing/IJob;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/internal/core/search/indexing/RemoveFolderFromIndex;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/indexing/RemoveFolderFromIndex;-><init>(Lorg/eclipse/core/runtime/IPath;[[C[[CLorg/eclipse/core/resources/IProject;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;)V

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->request(Lorg/eclipse/jdt/internal/core/search/processing/IJob;)V

    return-void
.end method

.method public reset()V
    .locals 2

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->reset()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexStates:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexLocations:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->javaPluginLocation:Lorg/eclipse/core/runtime/IPath;

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized resetIndex(Lorg/eclipse/core/runtime/IPath;)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->getDevice()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->computeIndexLocation(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getIndex(Lorg/eclipse/jdt/internal/core/index/IndexLocation;)Lorg/eclipse/jdt/internal/core/index/Index;

    move-result-object v3

    sget-boolean v4, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "-> reseting index: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for path: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v2, 0x1

    if-nez v3, :cond_3

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->recreateIndex(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/internal/core/index/Index;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v1

    :cond_3
    :try_start_2
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/index/Index;->reset()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v2

    :goto_2
    :try_start_3
    sget-boolean v2, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-> failed to reset index for path: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    monitor-exit p0

    return v1

    :goto_3
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public saveIndex(Lorg/eclipse/jdt/internal/core/index/Index;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/index/Index;->hasChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-> saving index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/index/Index;->getIndexLocation()Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/index/Index;->save()V

    :cond_1
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/eclipse/core/runtime/Path;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/index/Index;->containerPath:Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    iget p1, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->jobEnd:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->jobStart:I

    if-le p1, v1, :cond_4

    :goto_0
    iget v1, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->jobStart:I

    if-gt p1, v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->awaitingJobs:[Lorg/eclipse/jdt/internal/core/search/processing/IJob;

    aget-object v1, v1, p1

    instance-of v2, v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;

    if-eqz v2, :cond_3

    check-cast v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_4
    :goto_1
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->computeIndexLocation(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    move-result-object p1

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->SAVED_STATE:Ljava/lang/Integer;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->updateIndexState(Lorg/eclipse/jdt/internal/core/index/IndexLocation;Ljava/lang/Integer;)V

    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public saveIndexes()V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->valueTable:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v2, :cond_6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    move v5, v2

    move v4, v3

    :goto_1
    if-lt v4, v1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->participantsContainers:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->participantUpdated:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->writeParticipantsIndexNamesFile()V

    iput-boolean v3, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->participantUpdated:Z

    :cond_0
    xor-int/lit8 v0, v5, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->needToSave:Z

    return-void

    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/internal/core/index/Index;

    iget-object v7, v6, Lorg/eclipse/jdt/internal/core/index/Index;->monitor:Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;

    if-nez v7, :cond_2

    goto :goto_4

    :cond_2
    :try_start_1
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->enterRead()V

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/index/Index;->hasChanged()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitReadEnterWrite()Z

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_4

    :try_start_2
    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->saveIndex(Lorg/eclipse/jdt/internal/core/index/Index;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitWriteEnterRead()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v5

    :try_start_4
    sget-boolean v6, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v6, :cond_3

    const-string v6, "-> got the following exception while saving:"

    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v6, v8}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;Ljava/io/PrintStream;)V

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_3
    :try_start_5
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitWriteEnterRead()V

    :cond_4
    move v5, v3

    goto :goto_3

    :goto_2
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitWriteEnterRead()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_5
    :goto_3
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitRead()V

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :goto_5
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitRead()V

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_6

    :cond_6
    :try_start_6
    aget-object v5, v1, v4

    check-cast v5, Lorg/eclipse/jdt/internal/core/index/Index;

    if-eqz v5, :cond_7

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :goto_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method

.method public savePreBuiltIndex(Lorg/eclipse/jdt/internal/core/index/Index;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/index/Index;->hasChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-> saving pre-build index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/index/Index;->getIndexLocation()Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/index/Index;->save()V

    :cond_1
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/index/Index;->getIndexLocation()Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    move-result-object p1

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->REUSE_STATE:Ljava/lang/Integer;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->updateIndexState(Lorg/eclipse/jdt/internal/core/index/IndexLocation;Ljava/lang/Integer;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public scheduleDocumentIndexing(Lorg/eclipse/jdt/core/search/SearchDocument;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/index/IndexLocation;Lorg/eclipse/jdt/core/search/SearchParticipant;)V
    .locals 8

    new-instance v7, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager$1;-><init>(Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;Lorg/eclipse/jdt/internal/core/index/IndexLocation;Lorg/eclipse/jdt/core/search/SearchDocument;Lorg/eclipse/jdt/core/search/SearchParticipant;)V

    invoke-virtual {p0, v7}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->request(Lorg/eclipse/jdt/internal/core/search/processing/IJob;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "In-memory indexes:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->valueTable:[Ljava/lang/Object;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-lt v4, v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    aget-object v6, v2, v4

    check-cast v6, Lorg/eclipse/jdt/internal/core/index/Index;

    if-eqz v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v7, " - "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/index/Index;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public updateParticipant(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->participantsContainers:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->readParticipantsIndexNamesFile()V

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/index/FileIndexLocation;

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->toFile()Ljava/io/File;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/eclipse/jdt/internal/core/index/FileIndexLocation;-><init>(Ljava/io/File;Z)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->participantsContainers:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->participantsContainers:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->participantUpdated:Z

    :cond_1
    return-void
.end method
