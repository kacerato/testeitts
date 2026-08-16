.class public final Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CHUNK_CACHE_SIZE_MB:Ljava/lang/String; = "chunkCacheSizeMb"

.field public static final CHUNK_CACHE_SIZE_MB_DEFAULT:D = 128.0

.field public static final CHUNK_CACHE_SIZE_PERCENT:Ljava/lang/String; = "chunkCacheSizePercent"

.field public static final CHUNK_CACHE_SIZE_PERCENT_DEFAULT:D = 5.0

.field private static sSharedInstance:Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;


# instance fields
.field private fPageTable:[Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

.field private fPointer:I

.field private fTableIsFull:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lorg/eclipse/core/runtime/preferences/InstanceScope;->INSTANCE:Lorg/eclipse/core/runtime/preferences/IScopeContext;

    const-string v1, "org.eclipse.jdt.core"

    invoke-interface {v0, v1}, Lorg/eclipse/core/runtime/preferences/IScopeContext;->getNode(Ljava/lang/String;)Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->getChunkCacheSize(Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;)J

    move-result-wide v1

    new-instance v3, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;

    invoke-direct {v3, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;-><init>(J)V

    sput-object v3, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->sSharedInstance:Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;

    new-instance v1, Lorg/eclipse/jdt/internal/core/nd/db/a;

    invoke-direct {v1, v0}, Lorg/eclipse/jdt/internal/core/nd/db/a;-><init>(Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;)V

    invoke-interface {v0, v1}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->addPreferenceChangeListener(Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$IPreferenceChangeListener;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/32 v0, 0x500000

    .line 1
    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->computeLength(J)I

    move-result p1

    new-array p1, p1, [Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->fPageTable:[Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    return-void
.end method

.method public static synthetic a(Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$PreferenceChangeEvent;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->lambda$0(Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$PreferenceChangeEvent;)V

    return-void
.end method

.method private computeLength(J)I
    .locals 2

    const-wide/16 v0, 0x1000

    div-long/2addr p1, v0

    const-wide/32 v0, 0x7fffffff

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const/4 v0, 0x1

    long-to-int p1, p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private evictChunk()V
    .locals 4

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->fPageTable:[Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->fPointer:I

    aget-object v2, v0, v1

    iget-boolean v3, v2, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fCacheHitFlag:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fCacheHitFlag:Z

    add-int/lit8 v1, v1, 0x1

    array-length v0, v0

    rem-int/2addr v1, v0

    iput v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->fPointer:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    iput v0, v2, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fCacheIndex:I

    iget-object v0, v2, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fDatabase:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->checkIfChunkReleased(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->fPageTable:[Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->fPointer:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    return-void
.end method

.method private static getChunkCacheSize(Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;)J
    .locals 8

    const-string v0, "chunkCacheSizeMb"

    const-wide/high16 v1, 0x4060000000000000L    # 128.0

    invoke-interface {p0, v0, v1, v2}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    const-string v2, "chunkCacheSizePercent"

    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    invoke-interface {p0, v2, v3, v4}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->getDouble(Ljava/lang/String;D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    mul-double/2addr v4, v2

    double-to-long v2, v4

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    mul-double/2addr v0, v4

    mul-double/2addr v0, v4

    double-to-long v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSharedInstance()Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->sSharedInstance:Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;

    return-object v0
.end method

.method private static synthetic lambda$0(Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$PreferenceChangeEvent;)V
    .locals 2

    invoke-virtual {p1}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$PreferenceChangeEvent;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunkCacheSizeMb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "chunkCacheSizePercent"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p1, v0

    if-eqz p1, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->sSharedInstance:Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->getChunkCacheSize(Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->setMaxSize(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p1, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fCacheIndex:I

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    iput-boolean v1, p1, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fCacheHitFlag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->fTableIsFull:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->evictChunk()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->fPointer:I

    iput v0, p1, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fCacheIndex:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->fPageTable:[Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    aput-object p1, v1, v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->fPointer:I

    iput v0, p1, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fCacheIndex:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->fPageTable:[Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    aput-object p1, v2, v0

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->fPointer:I

    array-length p1, v2

    if-ne v0, p1, :cond_2

    const/4 p1, 0x0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->fPointer:I

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->fTableIsFull:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->fPageTable:[Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    array-length v3, v2

    if-lt v1, v3, :cond_0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->fTableIsFull:Z

    iput v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->fPointer:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :try_start_1
    aget-object v2, v2, v1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, -0x1

    iput v3, v2, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fCacheIndex:I

    iget-object v3, v2, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fDatabase:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->checkIfChunkReleased(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->fPageTable:[Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getMaxSize()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->fPageTable:[Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, v0

    const-wide/16 v2, 0x1000

    mul-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized remove(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p1, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fCacheIndex:I

    if-ltz v0, :cond_1

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->fTableIsFull:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->fPageTable:[Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->fPointer:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->fTableIsFull:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->fPointer:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->fPointer:I

    :goto_0
    const/4 v1, -0x1

    iput v1, p1, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fCacheIndex:I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->fPageTable:[Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->fPointer:I

    aget-object v2, p1, v1

    aput-object v2, p1, v0

    iput v0, v2, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fCacheIndex:I

    const/4 v0, 0x0

    aput-object v0, p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setMaxSize(J)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->computeLength(J)I

    move-result p1

    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->fTableIsFull:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->fPageTable:[Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    array-length p2, p2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    iget p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->fPointer:I

    :goto_0
    const/4 v0, 0x0

    if-le p1, p2, :cond_1

    new-array p1, p1, [Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->fPageTable:[Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    invoke-static {v1, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->fTableIsFull:Z

    iput p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->fPointer:I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->fPageTable:[Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    goto :goto_2

    :cond_1
    move v1, p1

    :goto_1
    if-lt v1, p2, :cond_2

    new-array p2, p1, [Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->fPageTable:[Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    invoke-static {v1, v0, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->fTableIsFull:Z

    iput v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->fPointer:I

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->fPageTable:[Lorg/eclipse/jdt/internal/core/nd/db/Chunk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->fPageTable:[Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    aget-object v2, v2, v1

    const/4 v3, -0x1

    iput v3, v2, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fCacheIndex:I

    iget-object v3, v2, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fDatabase:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->checkIfChunkReleased(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
