.class public final Lcom/ardor3d/util/TextureKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/util/export/Savable;


# static fields
.field protected static final _keyCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ardor3d/util/TextureKey;",
            ">;>;"
        }
    .end annotation
.end field

.field private static _uniqueTK:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field protected transient _code:I

.field private _dirty:Z

.field private final _dirtyContexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected _flipped:Z

.field protected _format:Lcom/ardor3d/image/TextureStoreFormat;

.field protected _id:Ljava/lang/String;

.field protected final transient _idCache:Lcom/ardor3d/util/ContextIdReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ardor3d/util/ContextIdReference<",
            "Lcom/ardor3d/util/TextureKey;",
            ">;"
        }
    .end annotation
.end field

.field protected _minFilter:Lcom/ardor3d/image/Texture$MinificationFilter;

.field protected _source:Lcom/ardor3d/util/resource/ResourceSource;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/google/common/collect/M1;->y()Ljava/util/LinkedList;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/util/TextureKey;->_keyCache:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 v1, -0x80000000

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/ardor3d/util/TextureKey;->_uniqueTK:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ardor3d/util/TextureKey;->_source:Lcom/ardor3d/util/resource/ResourceSource;

    sget-object v1, Lcom/ardor3d/image/TextureStoreFormat;->GuessCompressedFormat:Lcom/ardor3d/image/TextureStoreFormat;

    iput-object v1, p0, Lcom/ardor3d/util/TextureKey;->_format:Lcom/ardor3d/image/TextureStoreFormat;

    sget-object v1, Lcom/ardor3d/image/Texture$MinificationFilter;->Trilinear:Lcom/ardor3d/image/Texture$MinificationFilter;

    iput-object v1, p0, Lcom/ardor3d/util/TextureKey;->_minFilter:Lcom/ardor3d/image/Texture$MinificationFilter;

    new-instance v1, Lcom/ardor3d/util/ContextIdReference;

    invoke-static {}, Lcom/ardor3d/util/TextureManager;->getRefQueue()Ljava/lang/ref/ReferenceQueue;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/ardor3d/util/ContextIdReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v1, p0, Lcom/ardor3d/util/TextureKey;->_idCache:Lcom/ardor3d/util/ContextIdReference;

    const v1, 0x7fffffff

    iput v1, p0, Lcom/ardor3d/util/TextureKey;->_code:I

    sget-boolean v1, Lcom/ardor3d/util/Constants;->useMultipleContexts:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/common/collect/M1;->q()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/util/TextureKey;->_dirtyContexts:Ljava/util/List;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/ardor3d/util/TextureKey;->_dirtyContexts:Ljava/util/List;

    :goto_0
    return-void
.end method

.method public static declared-synchronized clearKey(Lcom/ardor3d/util/TextureKey;)Z
    .locals 3

    const-class v0, Lcom/ardor3d/util/TextureKey;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ardor3d/util/TextureKey;->_keyCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/util/TextureKey;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p0}, Lcom/ardor3d/util/TextureKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized getKey(Lcom/ardor3d/util/resource/ResourceSource;ZLcom/ardor3d/image/TextureStoreFormat;Lcom/ardor3d/image/Texture$MinificationFilter;)Lcom/ardor3d/util/TextureKey;
    .locals 2

    const-class v0, Lcom/ardor3d/util/TextureKey;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2, v1, p3}, Lcom/ardor3d/util/TextureKey;->getKey(Lcom/ardor3d/util/resource/ResourceSource;ZLcom/ardor3d/image/TextureStoreFormat;Ljava/lang/String;Lcom/ardor3d/image/Texture$MinificationFilter;)Lcom/ardor3d/util/TextureKey;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized getKey(Lcom/ardor3d/util/resource/ResourceSource;ZLcom/ardor3d/image/TextureStoreFormat;Ljava/lang/String;Lcom/ardor3d/image/Texture$MinificationFilter;)Lcom/ardor3d/util/TextureKey;
    .locals 2

    const-class v0, Lcom/ardor3d/util/TextureKey;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Lcom/ardor3d/util/TextureKey;

    invoke-direct {v1}, Lcom/ardor3d/util/TextureKey;-><init>()V

    .line 3
    iput-object p0, v1, Lcom/ardor3d/util/TextureKey;->_source:Lcom/ardor3d/util/resource/ResourceSource;

    .line 4
    iput-boolean p1, v1, Lcom/ardor3d/util/TextureKey;->_flipped:Z

    .line 5
    iput-object p4, v1, Lcom/ardor3d/util/TextureKey;->_minFilter:Lcom/ardor3d/image/Texture$MinificationFilter;

    .line 6
    iput-object p2, v1, Lcom/ardor3d/util/TextureKey;->_format:Lcom/ardor3d/image/TextureStoreFormat;

    .line 7
    iput-object p3, v1, Lcom/ardor3d/util/TextureKey;->_id:Ljava/lang/String;

    const p0, 0x7fffffff

    .line 8
    iput p0, v1, Lcom/ardor3d/util/TextureKey;->_code:I

    .line 9
    sget-object p0, Lcom/ardor3d/util/TextureKey;->_keyCache:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 11
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/util/TextureKey;

    if-nez p1, :cond_1

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p1, v1}, Lcom/ardor3d/util/TextureKey;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 14
    monitor-exit v0

    return-object p1

    .line 15
    :cond_2
    :try_start_1
    sget-object p0, Lcom/ardor3d/util/TextureKey;->_keyCache:Ljava/util/List;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static declared-synchronized getRTTKey(Lcom/ardor3d/image/Texture$MinificationFilter;)Lcom/ardor3d/util/TextureKey;
    .locals 5

    const-class v0, Lcom/ardor3d/util/TextureKey;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ardor3d/util/TextureKey;->_uniqueTK:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/ardor3d/util/TextureKey;->_uniqueTK:Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v2, Lcom/ardor3d/image/TextureStoreFormat;->GuessCompressedFormat:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RTT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v1, p0}, Lcom/ardor3d/util/TextureKey;->getKey(Lcom/ardor3d/util/resource/ResourceSource;ZLcom/ardor3d/image/TextureStoreFormat;Ljava/lang/String;Lcom/ardor3d/image/Texture$MinificationFilter;)Lcom/ardor3d/util/TextureKey;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/ardor3d/util/TextureKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/ardor3d/util/TextureKey;

    iget-object v1, p0, Lcom/ardor3d/util/TextureKey;->_source:Lcom/ardor3d/util/resource/ResourceSource;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/ardor3d/util/TextureKey;->_source:Lcom/ardor3d/util/resource/ResourceSource;

    if-eqz v1, :cond_3

    return v2

    :cond_2
    iget-object v3, p1, Lcom/ardor3d/util/TextureKey;->_source:Lcom/ardor3d/util/resource/ResourceSource;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/ardor3d/util/TextureKey;->_id:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v3, p1, Lcom/ardor3d/util/TextureKey;->_id:Ljava/lang/String;

    if-eqz v3, :cond_4

    return v2

    :cond_4
    if-eqz v1, :cond_5

    iget-object v3, p1, Lcom/ardor3d/util/TextureKey;->_id:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/ardor3d/util/TextureKey;->_minFilter:Lcom/ardor3d/image/Texture$MinificationFilter;

    iget-object v3, p1, Lcom/ardor3d/util/TextureKey;->_minFilter:Lcom/ardor3d/image/Texture$MinificationFilter;

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/ardor3d/util/TextureKey;->_format:Lcom/ardor3d/image/TextureStoreFormat;

    iget-object v3, p1, Lcom/ardor3d/util/TextureKey;->_format:Lcom/ardor3d/image/TextureStoreFormat;

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/ardor3d/util/TextureKey;->_flipped:Z

    iget-boolean p1, p1, Lcom/ardor3d/util/TextureKey;->_flipped:Z

    if-eq v1, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public getClassTag()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/ardor3d/util/TextureKey;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/ardor3d/util/TextureKey;

    return-object v0
.end method

.method public getContextObjects()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/util/TextureKey;->_idCache:Lcom/ardor3d/util/ContextIdReference;

    invoke-virtual {v0}, Lcom/ardor3d/util/ContextIdReference;->getContextObjects()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Lcom/ardor3d/image/TextureStoreFormat;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/util/TextureKey;->_format:Lcom/ardor3d/image/TextureStoreFormat;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/util/TextureKey;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public getMinificationFilter()Lcom/ardor3d/image/Texture$MinificationFilter;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/util/TextureKey;->_minFilter:Lcom/ardor3d/image/Texture$MinificationFilter;

    return-object v0
.end method

.method public getSource()Lcom/ardor3d/util/resource/ResourceSource;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/util/TextureKey;->_source:Lcom/ardor3d/util/resource/ResourceSource;

    return-object v0
.end method

.method public getTextureIdForContext(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/util/TextureKey;->_idCache:Lcom/ardor3d/util/ContextIdReference;

    invoke-virtual {v0, p1}, Lcom/ardor3d/util/ContextIdReference;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/util/TextureKey;->_idCache:Lcom/ardor3d/util/ContextIdReference;

    invoke-virtual {v0, p1}, Lcom/ardor3d/util/ContextIdReference;->get(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/ardor3d/util/TextureKey;->_code:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_2

    const/16 v0, 0x11

    iput v0, p0, Lcom/ardor3d/util/TextureKey;->_code:I

    const/16 v1, 0x11

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/ardor3d/util/TextureKey;->_source:Lcom/ardor3d/util/resource/ResourceSource;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ardor3d/util/TextureKey;->_code:I

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/ardor3d/util/TextureKey;->_id:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :cond_1
    add-int/2addr v1, v3

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ardor3d/util/TextureKey;->_code:I

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/ardor3d/util/TextureKey;->_minFilter:Lcom/ardor3d/image/Texture$MinificationFilter;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ardor3d/util/TextureKey;->_code:I

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/ardor3d/util/TextureKey;->_format:Lcom/ardor3d/image/TextureStoreFormat;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/ardor3d/util/TextureKey;->_flipped:Z

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ardor3d/util/TextureKey;->_code:I

    :cond_2
    iget v0, p0, Lcom/ardor3d/util/TextureKey;->_code:I

    return v0
.end method

.method public isDirty(Ljava/lang/Object;)Z
    .locals 4

    sget-boolean v0, Lcom/ardor3d/util/Constants;->useMultipleContexts:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ardor3d/util/TextureKey;->_dirtyContexts:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ardor3d/util/TextureKey;->_dirtyContexts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/ardor3d/util/TextureKey;->_dirtyContexts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :cond_3
    monitor-exit v0

    return v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    iget-boolean p1, p0, Lcom/ardor3d/util/TextureKey;->_dirty:Z

    return p1
.end method

.method public isFlipped()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/util/TextureKey;->_flipped:Z

    return v0
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/util/resource/ResourceSource;

    iput-object v0, p0, Lcom/ardor3d/util/TextureKey;->_source:Lcom/ardor3d/util/resource/ResourceSource;

    const-string v0, "flipped"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Lcom/ardor3d/util/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ardor3d/util/TextureKey;->_flipped:Z

    const-class v0, Lcom/ardor3d/image/TextureStoreFormat;

    sget-object v2, Lcom/ardor3d/image/TextureStoreFormat;->GuessCompressedFormat:Lcom/ardor3d/image/TextureStoreFormat;

    const-string v3, "format"

    invoke-interface {p1, v3, v0, v2}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/image/TextureStoreFormat;

    iput-object v0, p0, Lcom/ardor3d/util/TextureKey;->_format:Lcom/ardor3d/image/TextureStoreFormat;

    const-class v0, Lcom/ardor3d/image/Texture$MinificationFilter;

    sget-object v2, Lcom/ardor3d/image/Texture$MinificationFilter;->Trilinear:Lcom/ardor3d/image/Texture$MinificationFilter;

    const-string v3, "minFilter"

    invoke-interface {p1, v3, v0, v2}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/image/Texture$MinificationFilter;

    iput-object v0, p0, Lcom/ardor3d/util/TextureKey;->_minFilter:Lcom/ardor3d/image/Texture$MinificationFilter;

    const-string v0, "id"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ardor3d/util/TextureKey;->_id:Ljava/lang/String;

    const p1, 0x7fffffff

    iput p1, p0, Lcom/ardor3d/util/TextureKey;->_code:I

    return-void
.end method

.method public removeFromIdCache()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ardor3d/util/TextureKey;->_idCache:Lcom/ardor3d/util/ContextIdReference;

    invoke-virtual {v0}, Lcom/ardor3d/util/ContextIdReference;->clear()V

    return-void
.end method

.method public removeFromIdCache(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ardor3d/util/TextureKey;->_idCache:Lcom/ardor3d/util/ContextIdReference;

    invoke-virtual {v0, p1}, Lcom/ardor3d/util/ContextIdReference;->remove(Ljava/lang/Object;)I

    return-void
.end method

.method public setClean(Ljava/lang/Object;)V
    .locals 3

    sget-boolean v0, Lcom/ardor3d/util/Constants;->useMultipleContexts:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ardor3d/util/TextureKey;->_dirtyContexts:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ardor3d/util/TextureKey;->_dirtyContexts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ardor3d/util/TextureKey;->_dirtyContexts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    monitor-exit v0

    goto :goto_1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ardor3d/util/TextureKey;->_dirty:Z

    :goto_1
    return-void
.end method

.method public setDirty()V
    .locals 4

    sget-boolean v0, Lcom/ardor3d/util/Constants;->useMultipleContexts:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ardor3d/util/TextureKey;->_dirtyContexts:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ardor3d/util/TextureKey;->_dirtyContexts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/ardor3d/util/TextureKey;->_idCache:Lcom/ardor3d/util/ContextIdReference;

    invoke-virtual {v1}, Lcom/ardor3d/util/ContextIdReference;->getContextObjects()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/ardor3d/util/TextureKey;->_dirtyContexts:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ardor3d/util/TextureKey;->_dirty:Z

    :goto_2
    return-void
.end method

.method public setTextureIdForContext(Ljava/lang/Object;I)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/ardor3d/util/TextureKey;->_idCache:Lcom/ardor3d/util/ContextIdReference;

    invoke-virtual {v0, p1, p2}, Lcom/ardor3d/util/ContextIdReference;->put(Ljava/lang/Object;I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "textureId must != 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tkey: src:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/util/TextureKey;->_source:Lcom/ardor3d/util/resource/ResourceSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " flip: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ardor3d/util/TextureKey;->_flipped:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ardor3d/util/TextureKey;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " imageType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/util/TextureKey;->_format:Lcom/ardor3d/image/TextureStoreFormat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/util/TextureKey;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/util/TextureKey;->_source:Lcom/ardor3d/util/resource/ResourceSource;

    const-string v1, "source"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-boolean v0, p0, Lcom/ardor3d/util/TextureKey;->_flipped:Z

    const-string v1, "flipped"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3}, Lcom/ardor3d/util/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/ardor3d/util/TextureKey;->_format:Lcom/ardor3d/image/TextureStoreFormat;

    const-string v1, "format"

    sget-object v3, Lcom/ardor3d/image/TextureStoreFormat;->GuessCompressedFormat:Lcom/ardor3d/image/TextureStoreFormat;

    invoke-interface {p1, v0, v1, v3}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/ardor3d/util/TextureKey;->_minFilter:Lcom/ardor3d/image/Texture$MinificationFilter;

    const-string v1, "minFilter"

    sget-object v3, Lcom/ardor3d/image/Texture$MinificationFilter;->Trilinear:Lcom/ardor3d/image/Texture$MinificationFilter;

    invoke-interface {p1, v0, v1, v3}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/ardor3d/util/TextureKey;->_id:Ljava/lang/String;

    const-string v1, "id"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
