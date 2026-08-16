.class public Lorg/eclipse/jdt/internal/core/nd/indexer/FileStateCache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final fileStateCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/FileStateCache;->fileStateCache:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a()Lorg/eclipse/jdt/internal/core/nd/indexer/FileStateCache;
    .locals 1

    invoke-static {}, Lorg/eclipse/jdt/internal/core/nd/indexer/FileStateCache;->create()Lorg/eclipse/jdt/internal/core/nd/indexer/FileStateCache;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/eclipse/jdt/internal/core/nd/indexer/FileStateCache;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/indexer/FileStateCache;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/nd/indexer/FileStateCache;-><init>()V

    return-object v0
.end method

.method public static getCache(Lorg/eclipse/jdt/internal/core/nd/Nd;)Lorg/eclipse/jdt/internal/core/nd/indexer/FileStateCache;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/indexer/b;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/nd/indexer/b;-><init>()V

    const-class v1, Lorg/eclipse/jdt/internal/core/nd/indexer/FileStateCache;

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getData(Ljava/lang/Class;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/internal/core/nd/indexer/FileStateCache;

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/FileStateCache;->fileStateCache:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/FileStateCache;->fileStateCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isUpToDate(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/FileStateCache;->fileStateCache:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/FileStateCache;->fileStateCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public put(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/FileStateCache;->fileStateCache:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/FileStateCache;->fileStateCache:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/FileStateCache;->fileStateCache:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/FileStateCache;->fileStateCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
